<div style="text-align: center; padding-top: 180px;">

<h1 style="font-size: 26pt; margin-bottom: 5px;">AP Statistics S2 Project</h1>

<h2 style="font-size: 18pt; border: none; font-weight: normal; margin-top: 5px;">AP-Style Question Design & Rubric Creation</h2>

<br/><br/><br/><br/>

<p style="font-size: 14pt;">
<strong>Student Name:</strong> Mickey Zhang (张嘉敏)<br/>
<strong>Class Number:</strong> P1<br/>
<strong>Date:</strong> April 2, 2026
</p>

<br/><br/><br/><br/><br/><br/><br/><br/>

<p style="font-size: 13pt;">AP Statistics — Semester 2</p>

</div>

<div style="page-break-after: always;"></div>

## Multiple-Choice Questions

---

**Question 1**

A city health department collected data on the number of hours of sleep per night for a random sample of 200 adults. The results are summarized in the bar chart below.

<div style="text-align: center; margin: 20px 0;">
<strong>Distribution of Nightly Sleep Hours Among 200 Adults</strong>

| Hours of Sleep | 3–4 | 4–5 | 5–6 | 6–7 | 7–8 | 8–9 | 9–10 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **Frequency** | 5 | 15 | 35 | 60 | 55 | 22 | 8 |

</div>

<div style="text-align: center; margin: 15px 0;">
<svg width="420" height="250" viewBox="0 0 420 250">
  <!-- Y-axis -->
  <line x1="50" y1="10" x2="50" y2="210" stroke="black" stroke-width="1.5"/>
  <!-- X-axis -->
  <line x1="50" y1="210" x2="410" y2="210" stroke="black" stroke-width="1.5"/>

  <!-- Y-axis labels -->
  <text x="45" y="210" text-anchor="end" font-size="10">0</text>
  <text x="45" y="180" text-anchor="end" font-size="10">10</text>
  <text x="45" y="150" text-anchor="end" font-size="10">20</text>
  <text x="45" y="120" text-anchor="end" font-size="10">30</text>
  <text x="45" y="90" text-anchor="end" font-size="10">40</text>
  <text x="45" y="60" text-anchor="end" font-size="10">50</text>
  <text x="45" y="30" text-anchor="end" font-size="10">60</text>

  <!-- Y-axis gridlines -->
  <line x1="50" y1="180" x2="410" y2="180" stroke="#ddd" stroke-width="0.5"/>
  <line x1="50" y1="150" x2="410" y2="150" stroke="#ddd" stroke-width="0.5"/>
  <line x1="50" y1="120" x2="410" y2="120" stroke="#ddd" stroke-width="0.5"/>
  <line x1="50" y1="90" x2="410" y2="90" stroke="#ddd" stroke-width="0.5"/>
  <line x1="50" y1="60" x2="410" y2="60" stroke="#ddd" stroke-width="0.5"/>
  <line x1="50" y1="30" x2="410" y2="30" stroke="#ddd" stroke-width="0.5"/>

  <!-- Bars: each bar width=45, gap=5 -->
  <!-- 3-4: freq=5, height=5*3=15 -->
  <rect x="55" y="195" width="45" height="15" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 4-5: freq=15, height=45 -->
  <rect x="105" y="165" width="45" height="45" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 5-6: freq=35, height=105 -->
  <rect x="155" y="105" width="45" height="105" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 6-7: freq=60, height=180 -->
  <rect x="205" y="30" width="45" height="180" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 7-8: freq=55, height=165 -->
  <rect x="255" y="45" width="45" height="165" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 8-9: freq=22, height=66 -->
  <rect x="305" y="144" width="45" height="66" fill="#808080" stroke="black" stroke-width="0.5"/>
  <!-- 9-10: freq=8, height=24 -->
  <rect x="355" y="186" width="45" height="24" fill="#808080" stroke="black" stroke-width="0.5"/>

  <!-- X-axis labels -->
  <text x="77" y="225" text-anchor="middle" font-size="10">3–4</text>
  <text x="127" y="225" text-anchor="middle" font-size="10">4–5</text>
  <text x="177" y="225" text-anchor="middle" font-size="10">5–6</text>
  <text x="227" y="225" text-anchor="middle" font-size="10">6–7</text>
  <text x="277" y="225" text-anchor="middle" font-size="10">7–8</text>
  <text x="327" y="225" text-anchor="middle" font-size="10">8–9</text>
  <text x="377" y="225" text-anchor="middle" font-size="10">9–10</text>

  <!-- Axis titles -->
  <text x="230" y="245" text-anchor="middle" font-size="11">Hours of Sleep</text>
  <text x="15" y="110" text-anchor="middle" font-size="11" transform="rotate(-90, 15, 110)">Frequency</text>
</svg>
</div>

Based on the histogram, which of the following statements is true?

(A) The distribution of sleep hours is approximately uniform.

(B) The median number of hours of sleep is between 7 and 8 hours.

(C) The distribution is skewed to the left, so the mean is likely less than the median.

(D) The distribution is skewed to the right, so the mean is likely greater than the median.

(E) The distribution is approximately symmetric, so the mean and median are approximately equal.

**Answer: (C)**

**Explanation:** The histogram shows that the distribution peaks around 6–7 hours and has a longer tail stretching toward the lower values (left). In a left-skewed distribution, the mean is pulled toward the tail and is therefore less than the median.

---

<div style="page-break-after: always;"></div>

**Question 2**

A pharmaceutical company claims that a new medication reduces systolic blood pressure by an average of 12 mmHg. A researcher selects a random sample of 45 patients who take the medication and finds that the mean reduction in systolic blood pressure is $\bar{x} = 10.3$ mmHg with a sample standard deviation of $s = 5.8$ mmHg. Assuming the conditions for inference are met, what is the value of the test statistic for testing $H_0: \mu = 12$ versus $H_a: \mu \neq 12$?

(A) $t = -1.966$

(B) $t = -1.280$

(C) $t = -0.293$

(D) $t = 0.293$

(E) $t = 1.966$

**Answer: (A)**

**Explanation:** The test statistic is calculated as:

$$t = \frac{\bar{x} - \mu_0}{s / \sqrt{n}} = \frac{10.3 - 12}{5.8 / \sqrt{45}} = \frac{-1.7}{0.8647} \approx -1.966$$

A calculator is needed to evaluate $\sqrt{45} \approx 6.708$ and the resulting division.

---

**Question 3**

A local coffee shop wants to estimate the proportion of customers who prefer iced coffee over hot coffee. The manager surveys every 5th customer who enters the shop on a Saturday, collecting responses from 80 customers. Of those surveyed, 52 said they prefer iced coffee. The manager wants to construct a 95% confidence interval for the true proportion of all customers who prefer iced coffee. Which of the following is a reason why the conditions for constructing a one-sample $z$-interval for a proportion may NOT be met?

(A) The sample size is too small for the Normal approximation to apply.

(B) The number of successes $np$ is less than 10.

(C) The number of failures $n(1-p)$ is less than 10.

(D) The sampling method may not produce a representative sample of all customers.

(E) The population size is not at least 10 times the sample size.

**Answer: (D)**

**Explanation:** The manager only surveyed customers on a Saturday, and only every 5th customer. Saturday customers may not be representative of all customers (e.g., weekend customers may have different preferences than weekday customers). This is a systematic sample from a single day, which raises concerns about whether the sample is representative of the entire population of customers. The Large Counts condition is met since $80 \times 0.65 = 52 \geq 10$ and $80 \times 0.35 = 28 \geq 10$.

<div style="page-break-after: always;"></div>

## Free Response Question

---

**Question 4**

A regional transit authority wants to evaluate whether a new express bus route has reduced the average commute time for riders traveling from the suburbs to the city center. Before the express route was introduced, the average commute time on the standard route was 47 minutes.

After the express route has been operating for three months, the transit authority selects a random sample of 36 riders who regularly use the new express route. The sample yields a mean commute time of $\bar{x} = 43.2$ minutes with a standard deviation of $s = 9.6$ minutes.

**(a)** Construct and interpret a 95% confidence interval for the mean commute time for all riders who use the new express bus route. Show all work.

**(b)** Based on the confidence interval from part (a), is there convincing evidence that the new express route has reduced the mean commute time below 47 minutes? Explain your reasoning.

<div style="page-break-after: always;"></div>

## Free Response Question — Solution

---

### Part (a): Construct and interpret a 95% confidence interval for the mean commute time.

**Step 1: Identify the parameter and procedure.**

Let $\mu$ be the true mean commute time (in minutes) for all riders who use the new express bus route. We will construct a one-sample $t$-interval for $\mu$.

**Step 2: Check conditions.**

- **Random:** The problem states that a random sample of 36 riders was selected. ✓
- **10% Condition:** It is reasonable to assume that 36 riders is less than 10% of all riders who use the express route. ✓
- **Normal/Large Sample:** The sample size is $n = 36 \geq 30$, so by the Central Limit Theorem, the sampling distribution of $\bar{x}$ is approximately normal. ✓

**Step 3: Calculate the confidence interval.**

The formula for a one-sample $t$-interval is:

$$\bar{x} \pm t^* \cdot \frac{s}{\sqrt{n}}$$

With $n = 36$, the degrees of freedom are $df = 35$. For a 95% confidence level, $t^* = 2.030$ (from the $t$-table with $df = 35$).

$$43.2 \pm 2.030 \times \frac{9.6}{\sqrt{36}} = 43.2 \pm 2.030 \times 1.6 = 43.2 \pm 3.248$$

$$\boxed{(39.952,\ 46.448)}$$

**Step 4: Interpret the interval.**

We are 95% confident that the true mean commute time for all riders who use the new express bus route is between 39.952 minutes and 46.448 minutes.

---

### Part (b): Is there convincing evidence that the express route has reduced the mean commute time below 47 minutes?

Yes. The entire 95% confidence interval $(39.952,\ 46.448)$ lies below 47 minutes. Because 47 is not contained in the interval, there is convincing evidence at the 5% significance level that the true mean commute time for riders using the new express bus route is less than 47 minutes. This suggests that the express route has been effective in reducing commute times compared to the previous average of 47 minutes on the standard route.

<div style="page-break-after: always;"></div>

## Free Response Question — Scoring Guideline

---

This question is scored in **five sections**. Each section is scored as **Essentially correct (E)**, **Partially correct (P)**, or **Incorrect (I)**.

### Part (a): Confidence Interval Construction

---

**Section 1 — Identify: State the parameter and the correct inference procedure.**

| Score | Criteria |
|:---:|:---|
| **E** | States the parameter as the true mean commute time for all express route riders AND identifies the procedure as a one-sample $t$-interval. |
| **P** | States the parameter OR identifies the procedure, but not both. |
| **I** | Does not state the parameter and does not identify the procedure. |

---

**Section 2 — Conditions: Verify the conditions for inference.**

| Score | Criteria |
|:---:|:---|
| **E** | Checks all three conditions with context: (1) Random — states the sample was randomly selected; (2) 10% condition — 36 is less than 10% of all express route riders; (3) Normal/Large Sample — $n = 36 \geq 30$ (CLT applies). |
| **P** | Checks at least two of the three conditions correctly. |
| **I** | Checks fewer than two conditions, or checks conditions without context. |

---

**Section 3 — Calculate: Compute the confidence interval correctly.**

| Score | Criteria |
|:---:|:---|
| **E** | Correctly calculates the interval as approximately $(39.952,\ 46.448)$ using correct $t^*$, $\bar{x}$, $s$, and $n$. Shows the formula and substitution. |
| **P** | Uses the correct formula and process but makes a minor computational error, OR uses $z^*$ instead of $t^*$. |
| **I** | Uses an incorrect formula, makes a major computational error, or shows no work. |

---

**Section 4 — Interpret: Interpret the confidence interval in context.**

| Score | Criteria |
|:---:|:---|
| **E** | Provides a correct interpretation that includes: (1) 95% confidence, (2) the interval bounds, and (3) reference to the population mean commute time for express route riders. |
| **P** | Provides an interpretation that is missing one of the three required components, or contains a minor error in wording. |
| **I** | Provides no interpretation, or the interpretation is missing two or more components. |

---

### Part (b): Drawing a Conclusion

---

**Section 5 — Conclusion: Use the confidence interval to draw a conclusion.**

| Score | Criteria |
|:---:|:---|
| **E** | Correctly concludes that there is convincing evidence that the mean commute time is less than 47 minutes AND provides a justification that references the confidence interval (e.g., 47 is not in the interval, or the entire interval is below 47). |
| **P** | Provides a correct conclusion but with an incomplete or weak justification, OR provides a strong justification but the conclusion is poorly stated. |
| **I** | Provides an incorrect conclusion, or provides no justification based on the confidence interval. |

---

### Scoring Summary

| Score | Criteria |
|:---:|:---|
| **4 (Complete)** | All five sections are E. |
| **3 (Substantial)** | Four sections are E, one is P. |
| **2 (Developing)** | Three sections are E; OR two E and one or two P. |
| **1 (Minimal)** | Two sections are E; OR one E and two P. |
| **0 (Insufficient)** | Does not meet the criteria for a score of 1. |
