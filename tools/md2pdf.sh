#!/bin/bash
# ============================================================
# md2pdf.sh — Markdown to PDF converter (preserving math & CJK)
# ============================================================
# Dependencies: pandoc, Google Chrome
# Math rendering: KaTeX (auto-downloaded from CDN)
# Usage:
#   ./tools/md2pdf.sh <input.md> [output.pdf]
#   ./tools/md2pdf.sh <directory>           # convert all .md in dir
#   ./tools/md2pdf.sh --all                 # convert all .md in output/
#
# Examples:
#   ./tools/md2pdf.sh output/exam.md
#   ./tools/md2pdf.sh output/exam.md /tmp/exam.pdf
#   ./tools/md2pdf.sh output/
#   ./tools/md2pdf.sh --all
# ============================================================

set -euo pipefail

# ---- Configuration ----
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DEFAULT_OUTPUT_DIR="$PROJECT_DIR/output"

# Chrome path detection
detect_chrome() {
  local candidates=(
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    "/Applications/Chromium.app/Contents/MacOS/Chromium"
    "$(which google-chrome 2>/dev/null || true)"
    "$(which chromium 2>/dev/null || true)"
  )
  for c in "${candidates[@]}"; do
    if [ -n "$c" ] && [ -x "$c" ]; then
      echo "$c"
      return 0
    fi
  done
  echo ""
  return 1
}

CHROME="$(detect_chrome)" || true
if [ -z "$CHROME" ]; then
  echo "ERROR: Google Chrome or Chromium not found." >&2
  exit 1
fi

# ---- Check dependencies ----
if ! command -v pandoc &>/dev/null; then
  echo "ERROR: pandoc not found. Install via: sudo port install pandoc" >&2
  exit 1
fi

# ---- Prepare KaTeX (download once, cache locally) ----
KATEX_CACHE="$PROJECT_DIR/tools/.katex-cache"
KATEX_VERSION="0.16.11"

prepare_katex() {
  if [ -f "$KATEX_CACHE/katex.min.js" ] && [ -f "$KATEX_CACHE/katex.min.css" ]; then
    return 0
  fi

  echo "Downloading KaTeX v${KATEX_VERSION}..."
  mkdir -p "$KATEX_CACHE/fonts"

  local BASE_URL="https://cdn.jsdelivr.net/npm/katex@${KATEX_VERSION}/dist"
  curl -sL "$BASE_URL/katex.min.css"              -o "$KATEX_CACHE/katex.min.css"
  curl -sL "$BASE_URL/katex.min.js"               -o "$KATEX_CACHE/katex.min.js"
  curl -sL "$BASE_URL/contrib/auto-render.min.js"  -o "$KATEX_CACHE/auto-render.min.js"

  # Download KaTeX fonts referenced in CSS
  for font in $(grep -oE 'fonts/[^)]+\.woff2' "$KATEX_CACHE/katex.min.css" | sort -u); do
    curl -sL "$BASE_URL/$font" -o "$KATEX_CACHE/$font"
  done
  echo "KaTeX cached at $KATEX_CACHE"
}

# ---- Build HTML header & footer ----
build_html_fragments() {
  HEADER_FILE=$(mktemp /tmp/md2pdf-header-XXXXXXXX.html)
  FOOTER_FILE=$(mktemp /tmp/md2pdf-footer-XXXXXXXX.html)

  cat > "$HEADER_FILE" << HEADEREOF
<link rel="stylesheet" href="file://$KATEX_CACHE/katex.min.css">
<script src="file://$KATEX_CACHE/katex.min.js"></script>
<script src="file://$KATEX_CACHE/auto-render.min.js"></script>
<style>
  @page { size: A4; margin: 18mm 15mm; }
  body {
    font-family: "Times New Roman", "Times", serif;
    font-size: 12pt;
    line-height: 1.8;
    color: #222;
    max-width: none;
    padding: 10px 20px;
  }
  h1 { font-size: 17pt; text-align: center; margin-bottom: 0.2em; }
  h2 { font-size: 14pt; border-bottom: 1.5px solid #999; padding-bottom: 3px; margin-top: 1.2em; }
  h3 { font-size: 12.5pt; margin-top: 0.8em; }
  hr { border: none; border-top: 1px solid #ddd; margin: 0.8em 0; }
  table { border-collapse: collapse; width: 100%; margin: 0.8em 0; page-break-inside: auto; }
  th, td { border: 1px solid #aaa; padding: 5px 8px; text-align: left; font-size: 10.5pt; }
  th { background: #f0f0f0; font-weight: bold; }
  tr { page-break-inside: avoid; }
  p { margin: 0.4em 0; }
  .katex { font-size: 1.05em; }
  .katex-display { margin: 0.6em 0; overflow-x: auto; }
</style>
HEADEREOF

  cat > "$FOOTER_FILE" << 'FOOTEREOF'
<script>
  document.addEventListener("DOMContentLoaded", function() {
    renderMathInElement(document.body, {
      delimiters: [
        {left: "$$", right: "$$", display: true},
        {left: "$", right: "$", display: false},
        {left: "\\(", right: "\\)", display: false},
        {left: "\\[", right: "\\]", display: true}
      ],
      throwOnError: false
    });
  });
</script>
FOOTEREOF
}

# ---- Core conversion function ----
convert_one() {
  local md_file="$1"
  local pdf_file="$2"

  if [ ! -f "$md_file" ]; then
    echo "ERROR: File not found: $md_file" >&2
    return 1
  fi

  local tmp_html
  tmp_html=$(mktemp /tmp/md2pdf-XXXXXXXX.html)

  # Step 1: pandoc MD -> HTML (KaTeX math markup preserved)
  pandoc "$md_file" \
    --from markdown+tex_math_dollars+tex_math_double_backslash \
    --to html5 \
    --katex \
    --standalone \
    --include-in-header="$HEADER_FILE" \
    --include-after-body="$FOOTER_FILE" \
    --metadata title="$(basename "$md_file" .md)" \
    -o "$tmp_html" 2>/dev/null

  # Step 2: Chrome headless -> PDF
  "$CHROME" \
    --headless \
    --disable-gpu \
    --no-sandbox \
    --allow-file-access-from-files \
    --print-to-pdf="$pdf_file" \
    --print-to-pdf-no-header \
    --virtual-time-budget=10000 \
    "file://$tmp_html" 2>/dev/null

  rm -f "$tmp_html"

  if [ -f "$pdf_file" ]; then
    local size
    size=$(wc -c < "$pdf_file" | tr -d ' ')
    echo "OK: $pdf_file (${size} bytes)"
    return 0
  else
    echo "FAIL: $pdf_file" >&2
    return 1
  fi
}

# ---- Main ----
usage() {
  echo "Usage:"
  echo "  $0 <file.md> [output.pdf]    Convert a single file"
  echo "  $0 <directory>                Convert all .md files in directory"
  echo "  $0 --all                      Convert all .md in output/"
  exit 1
}

if [ $# -lt 1 ]; then
  usage
fi

prepare_katex
build_html_fragments

SUCCESS=0
FAIL=0
# Avoid set -e tripping on ((0++))
inc_success() { SUCCESS=$((SUCCESS + 1)); }
inc_fail() { FAIL=$((FAIL + 1)); }

if [ "$1" = "--all" ]; then
  # Convert all .md files in output/
  for f in "$DEFAULT_OUTPUT_DIR"/*.md; do
    [ -f "$f" ] || continue
    pdf="${f%.md}.pdf"
    if convert_one "$f" "$pdf"; then
      inc_success
    else
      inc_fail
    fi
  done
elif [ -d "$1" ]; then
  # Convert all .md files in given directory
  for f in "$1"/*.md; do
    [ -f "$f" ] || continue
    pdf="${f%.md}.pdf"
    if convert_one "$f" "$pdf"; then
      inc_success
    else
      inc_fail
    fi
  done
elif [ -f "$1" ]; then
  # Convert single file
  pdf="${2:-${1%.md}.pdf}"
  if convert_one "$1" "$pdf"; then
    inc_success
  else
    inc_fail
  fi
else
  echo "ERROR: '$1' is not a file or directory" >&2
  usage
fi

# Cleanup
rm -f "$HEADER_FILE" "$FOOTER_FILE"

echo ""
echo "Done: $SUCCESS succeeded, $FAIL failed."
exit $FAIL
