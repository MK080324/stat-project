---
title: ""
mainfont: "Times New Roman"
CJKmainfont: "Songti SC"
fontsize: 12pt
geometry: margin=1in
header-includes:
  - \usepackage{fancyhdr}
  - \pagestyle{fancy}
  - \fancyhf{}
  - \fancyfoot[C]{\thepage}
  - \renewcommand{\headrulewidth}{0pt}
  - \usepackage{tikz}
  - \usepackage{pgfplots}
  - \pgfplotsset{compat=1.18}
  - \usepackage{enumerate}
  - \usepackage{array}
  - \usepackage{tabularx}
---

\thispagestyle{empty}

\vspace*{5cm}

\begin{center}
{\Huge\bfseries AP Statistics S2 Project}
\end{center}

\vspace{4cm}

\begin{center}
{\large
\begin{tabular}{rl}
\textbf{Student Name:} & Mickey Zhang (张嘉敏) \\[0.5cm]
\textbf{Class Number:} & P1 \\[0.5cm]
\textbf{Date:} & April 2, 2026 \\
\end{tabular}
}
\end{center}

\newpage

## Part I: Multiple-Choice Questions

\bigskip

**Question 1**

A city health department collected data on the number of hours of sleep per night for a random sample of 200 adults. The results are summarized in the histogram below.

\begin{center}
\textbf{Distribution of Nightly Sleep Hours Among 200 Adults}
\end{center}

\begin{center}
\begin{tikzpicture}
\begin{axis}[
    ybar interval,
    width=12cm, height=7cm,
    xlabel={Hours of Sleep per Night},
    ylabel={Number of Adults},
    ymin=0, ymax=75,
    xmin=3, xmax=11,
    xtick={3,4,5,6,7,8,9,10,11},
    xticklabel style={anchor=north},
    ytick={0,10,20,30,40,50,60,70},
    axis lines=left,
    bar width=0.92,
    every tick label/.style={font=\small},
    enlarge x limits=0.02,
    nodes near coords,
    every node near coord/.append style={anchor=south, font=\footnotesize},
]
\addplot[fill=gray!40, draw=black] coordinates {
    (3,5) (4,10) (5,18) (6,35) (7,65) (8,42) (9,20) (10,5) (11,0)
};
\end{axis}
\end{tikzpicture}
\end{center}

Based on the histogram, which of the following statements is correct?

\begin{enumerate}[(A)]
\item The distribution of sleep hours is approximately uniform.
\item The median number of hours of sleep is between 8 and 9 hours.
\item The distribution is skewed to the left, so the mean is likely less than the median.
\item The distribution is skewed to the right, so the mean is likely greater than the median.
\item The distribution is approximately symmetric, so the mean and median are approximately equal.
\end{enumerate}

\medskip

**Correct Answer: (C)**

**Explanation:** The histogram shows that the bulk of the data is concentrated at the higher values (6--8 hours), with the peak at the 7--8 hour interval, and a longer tail stretching toward the lower values (left). In a left-skewed distribution, the mean is pulled toward the left tail and is therefore less than the median.

For $n = 200$, the median is the average of the 100th and 101st values. Using cumulative frequencies: 3--4: 5, \; 4--5: 15, \; 5--6: 33, \; 6--7: 68, \; 7--8: 133. Since the cumulative count reaches 68 after the 6--7 interval and 133 after the 7--8 interval, the 100th and 101st values both fall in the 7--8 hour interval --- not the 8--9 interval, so choice (B) is incorrect.

\newpage

**Question 2**

A pharmaceutical company claims that a new medication reduces systolic blood pressure by an average of 10 mmHg. A researcher selects a random sample of 36 patients who take the medication and records the reduction in systolic blood pressure for each patient. The sample yields a mean reduction of $\bar{x} = 8.2$ mmHg with a sample standard deviation of $s = 4.8$ mmHg.

The researcher wants to test whether the true mean reduction is less than the company's claim. Assuming the conditions for inference are met, what is the $p$-value for the appropriate hypothesis test?

\begin{enumerate}[(A)]
\item $0.0077$
\item $0.0154$
\item $0.0308$
\item $0.4846$
\item $0.9846$
\end{enumerate}

\medskip

**Correct Answer: (B)**

**Explanation:** The hypotheses are $H_0\colon \mu = 10$ versus $H_a\colon \mu < 10$. The test statistic is:

$$t = \frac{\bar{x} - \mu_0}{s / \sqrt{n}} = \frac{8.2 - 10}{4.8 / \sqrt{36}} = \frac{-1.8}{0.8} = -2.25$$

Using a TI-Nspire calculator with $df = 36 - 1 = 35$:

\smallskip
\quad \texttt{Menu $\rightarrow$ Statistics $\rightarrow$ Distributions $\rightarrow$ tcdf}

\quad \texttt{Lower Bound: $-1 \times 10^{99}$, \; Upper Bound: $-2.25$, \; df: $35$}
\smallskip

$$p\text{-value} = \texttt{tcdf}(-1 \times 10^{99},\; -2.25,\; 35) \approx 0.0154$$

This is a one-sided (left-tailed) test, so we do not double the $p$-value. Choice (C) would represent the two-sided $p$-value, and choice (A) is too small.

\newpage

**Question 3**

A researcher is designing a study to investigate whether a new tutoring program improves students' math test scores. The researcher has 60 student volunteers from a school. Which of the following describes an appropriate method for assigning treatments in a completely randomized design?

\begin{enumerate}[(A)]
\item Allow each student to choose whether they want to participate in the tutoring program or study independently.
\item Assign the 30 students with the lowest pretest scores to the tutoring program and the remaining 30 students to the control group.
\item Write each student's name on a slip of paper, place the slips in a hat, draw 30 names for the tutoring program, and assign the remaining 30 students to the control group.
\item Assign all students in one class period to the tutoring program and all students in a different class period to the control group.
\item Pair students by pretest score, then within each pair, flip a coin to determine which student receives the tutoring program.
\end{enumerate}

\medskip

**Correct Answer: (C)**

**Explanation:** A completely randomized design requires that subjects be assigned to treatment groups using a chance process so that each subject has an equal probability of being placed in either group. Choice (C) describes random assignment by drawing names from a hat. Choice (A) is self-selection (no randomization). Choice (B) assigns based on pretest scores (systematic, not random). Choice (D) assigns by class period (not random and may introduce confounding). Choice (E) describes a matched pairs design, which is a valid experimental design but is not a \emph{completely randomized} design.

\newpage

## Part II: Free Response Question

**Topic: Statistical Inference**

\bigskip

A regional transit authority wants to evaluate whether a new express bus route has reduced the average commute time for riders traveling from the suburbs to the city center. Before the express route was introduced, the average commute time on the standard route was 47 minutes.

After the express route has been operating for three months, the transit authority selects a random sample of 36 riders who regularly use the new express route. The sample yields a mean commute time of $\bar{x} = 43.2$ minutes with a standard deviation of $s = 9.6$ minutes.

\bigskip

**(a)** Construct and interpret a 95 percent confidence interval for the mean commute time for all riders who use the new express bus route. Show all work.

\bigskip

**(b)** Based on the confidence interval from part (a), is there convincing evidence that the new express route has reduced the mean commute time below 47 minutes? Explain your reasoning.

\newpage

## Free Response Question --- Solution

**Part (a): Construct and interpret a 95% confidence interval for the mean commute time.**

\medskip

**Step 1: Identify the parameter and procedure.**

Let $\mu$ be the true mean commute time (in minutes) for all riders who use the new express bus route. We will construct a one-sample $t$-interval for $\mu$.

**Step 2: Check conditions.**

\begin{itemize}
\item \textbf{Random:} The problem states that a random sample of 36 riders was selected. $\checkmark$
\item \textbf{10\% Condition:} It is reasonable to assume that 36 riders is less than 10\% of all riders who use the express route. $\checkmark$
\item \textbf{Normal/Large Sample:} The sample size is $n = 36 \geq 30$, so by the Central Limit Theorem, the sampling distribution of $\bar{x}$ is approximately normal. $\checkmark$
\end{itemize}

**Step 3: Calculate the confidence interval.**

Using the TI-Nspire to compute a one-sample $t$-interval directly:

\smallskip
\quad \texttt{Menu $\rightarrow$ Statistics $\rightarrow$ Confidence Intervals $\rightarrow$ t Interval}

\quad \texttt{$\bar{x}$: 43.2, \; $s$: 9.6, \; $n$: 36, \; C-Level: 0.95}
\smallskip

$$\texttt{tInterval}(43.2,\; 9.6,\; 36,\; 0.95) \;\rightarrow\; \boxed{(39.952,\; 46.448)}$$

\smallskip

\noindent\textit{Formula verification:} The formula for a one-sample $t$-interval is $\bar{x} \pm t^* \cdot \dfrac{s}{\sqrt{n}}$.

With $df = 35$, the critical value is:

\smallskip
\quad \texttt{Menu $\rightarrow$ Statistics $\rightarrow$ Distributions $\rightarrow$ Inverse t}

\quad \texttt{Area: $0.975$, \; df: $35$}
\smallskip

$$t^* = \texttt{invT}(0.975,\; 35) \approx 2.030$$

$$43.2 \pm 2.030 \times \frac{9.6}{\sqrt{36}} = 43.2 \pm 2.030 \times 1.6 = 43.2 \pm 3.248 = (39.952,\ 46.448) \;\checkmark$$

**Step 4: Interpret the interval.**

We are 95% confident that the true mean commute time for all riders who use the new express bus route is between 39.952 minutes and 46.448 minutes.

\bigskip
\hrule
\bigskip

**Part (b): Is there convincing evidence that the express route has reduced the mean commute time below 47 minutes?**

We perform a one-sample $t$-test.

\medskip

\noindent\textbf{State:} $H_0\colon \mu = 47$ \quad versus \quad $H_a\colon \mu < 47$

where $\mu$ is the true mean commute time for all riders who use the new express bus route. We use a significance level of $\alpha = 0.05$.

\medskip

\noindent\textbf{Plan:} One-sample $t$-test for a mean. The conditions were verified in part (a).

\medskip

\noindent\textbf{Do:}

$$t = \frac{\bar{x} - \mu_0}{s / \sqrt{n}} = \frac{43.2 - 47}{9.6 / \sqrt{36}} = \frac{-3.8}{1.6} = -2.375$$

Using the TI-Nspire with $df = 35$:

\smallskip
\quad \texttt{Menu $\rightarrow$ Statistics $\rightarrow$ Distributions $\rightarrow$ tcdf}

\quad \texttt{Lower Bound: $-1 \times 10^{99}$, \; Upper Bound: $-2.375$, \; df: $35$}
\smallskip

$$p\text{-value} = \texttt{tcdf}(-1 \times 10^{99},\; -2.375,\; 35) \approx 0.0116$$

\medskip

\noindent\textbf{Conclude:} Since $p\text{-value} \approx 0.0116 < \alpha = 0.05$, we reject $H_0$. There is convincing evidence that the true mean commute time for riders using the new express bus route is less than 47 minutes. This suggests that the express route has been effective in reducing commute times compared to the previous average of 47 minutes on the standard route.

\newpage

## Free Response Question --- Scoring Guideline

This question is scored in **four sections**. Each section is scored as **essentially correct (E)**, **partially correct (P)**, or **incorrect (I)**.

\bigskip

\noindent\textbf{Section 1: Identify the parameter and procedure}

\medskip

\renewcommand{\arraystretch}{1.5}
\begin{tabularx}{\textwidth}{|>{\bfseries\centering\arraybackslash}p{1cm}|X|}
\hline
E & States the parameter as the true mean commute time for all riders who use the express bus route \textbf{and} identifies the procedure as a one-sample $t$-interval. \\
\hline
P & States the parameter \textbf{or} identifies the procedure correctly, but not both; or uses $z$-interval instead of $t$-interval. \\
\hline
I & Does not state the parameter and does not identify the procedure, or identifies a completely incorrect procedure. \\
\hline
\end{tabularx}

\bigskip

\noindent\textbf{Section 2: Check conditions for inference}

\medskip

\begin{tabularx}{\textwidth}{|>{\bfseries\centering\arraybackslash}p{1cm}|X|}
\hline
E & Verifies all three conditions with context: (1) Random --- states the sample was randomly selected; (2) 10\% condition --- 36 riders is less than 10\% of all express route riders; (3) Normal/Large Sample --- $n = 36 \geq 30$, so the CLT applies. \\
\hline
P & Verifies at least two of the three conditions correctly with context, or verifies all three but with weak justification. \\
\hline
I & Verifies fewer than two conditions, or provides incorrect justifications. \\
\hline
\end{tabularx}

\bigskip

\noindent\textbf{Section 3: Calculate the confidence interval}

\medskip

\begin{tabularx}{\textwidth}{|>{\bfseries\centering\arraybackslash}p{1cm}|X|}
\hline
E & Correctly computes the interval as approximately $(39.952,\ 46.448)$ using correct $t^*$, $\bar{x}$, $s$, and $n$. Shows formula and substitution. Minor arithmetic errors are acceptable if the process is correct. \\
\hline
P & Uses the correct formula but makes a computational error, or uses $z^* = 1.96$ instead of $t^*$ but otherwise computes correctly. \\
\hline
I & Uses an incorrect formula, makes a major computational error, or shows no work. \\
\hline
\end{tabularx}

\bigskip

\noindent\textbf{Section 4: Interpret the interval and draw a conclusion}

\medskip

\begin{tabularx}{\textwidth}{|>{\bfseries\centering\arraybackslash}p{1cm}|X|}
\hline
E & \textbf{Part (a):} Provides a correct interpretation that includes (i) 95\% confidence, (ii) the interval bounds, and (iii) reference to the population mean commute time for all express route riders. \textbf{Part (b):} States correct hypotheses ($H_0\colon \mu = 47$, $H_a\colon \mu < 47$), computes the test statistic and $p$-value correctly, \textbf{and} draws an appropriate conclusion in context with linkage to the $p$-value. \\
\hline
P & Provides a correct interpretation/conclusion for one part but not the other; or addresses both parts but with minor errors (e.g., says ``95\% probability,'' omits context in the conclusion, or uses a two-sided test instead of one-sided). \\
\hline
I & Fails to interpret the interval in context, or draws an incorrect conclusion, or provides no justification linking the test result to the conclusion. \\
\hline
\end{tabularx}

\bigskip
\bigskip

\noindent\textbf{Overall Scoring:}

\medskip

\begin{center}
\renewcommand{\arraystretch}{1.4}
\begin{tabular}{|c|l|}
\hline
\textbf{Score} & \textbf{Criteria} \\
\hline
4 (Complete) & Four sections essentially correct (E). \\
\hline
3 (Substantial) & Three E and one P. \\
\hline
2 (Developing) & Two E and one or two P; or three E and one I. \\
\hline
1 (Minimal) & One E and two P; or other combinations with at least two P. \\
\hline
0 (Insufficient) & Does not meet the criteria for a score of 1. \\
\hline
\end{tabular}
\end{center}

\medskip

\noindent\textbf{Note:} If a student's answer in part (b) is consistent with an incorrect interval from part (a), full credit may still be awarded for part (b) if the reasoning is logically sound.
