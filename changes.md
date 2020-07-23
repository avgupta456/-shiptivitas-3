## Changes

I installed sqlite3 and did some exploratory analysis of the dataset. Then, I created the required queries without too much difficulty. Regarding the questions presented:
* Hypothesis: The daily users would increase after the change on 06/02/2018. Additionally, cards would be moved on average roughly twice, from backlog to in progress to complete (possibly more due to mistakes through the process)
* Impact: The data shows daily users increased from 4.43/day to 14.58/day before and after the update, a 229% increase. Additionally, cards were moved on average 2.43 on average, similar to our prediction.
* Explanation: I used standard SQL selects (nested) to get the desired data. Key functions were Dictinct, Date, Avg, and nesting.
