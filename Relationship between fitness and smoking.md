# Relationship between fitness and smoking  
Given the data table below, determine if there is a relationship between fitness level and smoking habits.  
|                             | **Low fitness level** | **Medium-low fitness level** | **Medium-high fitness level** | **High fitness level** |
|-----------------------------|-----------------------|------------------------------|-------------------------------|------------------------|
| **Never smoked**            | 113                   | 113                          | 110                           | 159                    |
| **Former smokers**          | 119                   | 135                          | 172                           | 190                    |
| **1 to 9 cigarettes daily** | 77                    | 91                           | 86                            | 65                     |
| **>=10 cigarettes daily**   | 181                   | 152                          | 124                           | 73                     |

  
## Peason's chi-squared test  
Determine if there is a significant association between two categorical variables from a single population.  
Two categorical variables for this question are smoking level and fitness level.  
  
## Hypothesis and significance level  
null hypothesis: There is no relationship between two variables.  
alternative hypothesis: There is a relationship between two variables.  
significance level(α) = 0.05  
- If p-value < 0.05, reject null hypothesis
- If p-value > 0.05, fail to reject null hypothesis, which means two variables are independent.  
  
## Chi-squared matric
Σ{(observed - expected)<sup>2</sup> / expected}  

### Calculate expected value
(sum of row * sum of column) / n  
n = sample size = 1960  

<Calculated excpected values in table>  

|                             | **Low fitness level** | **Medium-low fitness level** | **Medium-high fitness level** | **High fitness level** |
|-----------------------------|-----------------------|------------------------------|-------------------------------|------------------------|
| **Never smoked**            | 123.75                | 124.002551                   | 124.255102                    | 122.992346             |
| **Former smokers**          | 154                   | 154.314286                   | 154.628571                    | 153.057142             |
| **1 to 9 cigarettes daily** | 79.75                 | 79.9127551                   | 80.0755102                    | 79.261734              |
| **>=10 cigarettes daily**   | 132.5                 | 132.770408                   | 133.040816                    | 131.688775             |

  
### Calculate (observed - expected)<sup>2</sup> / expected  
<Calculated values in table>

|                             | **Low fitness level** | **Medium-low fitness level** | **Medium-high fitness level** | **High fitness level** |
|-----------------------------|-----------------------|------------------------------|-------------------------------|------------------------|
| **Never smoked**            | 0.933838              | 0.97624                      | 1.63541                       | 10.5417                |
| **Former smokers**          | 7.954545              | 2.41741                      | 1.95156                       | 8.91677                |
| **1 to 9 cigarettes daily** | 0.094827              | 1.53827                      | 0.43833                       | 2.56614                |
| **>=10 cigarettes daily**   | 17.75283              | 2.78509                      | 0.61437                       | 26.1554                |  
  
  
### chi-squared score and degree of freedom
Total sum = 87.27273  
degree of freedom = (# rows - 1) * (# columns - 1) = 9  
  
## p-value
I used online chi-square calculator with the value of 87.272 and 9 for chi score and degree of freedom.  
The p-value is <.0.00001 so that p-value is less than 0.05.  
  
## Conclusion
Since p-value is <0.05, we can reject null hypothesis. It concludes that two variables are not indepent.  
Therefore, smoking level and fitness level have a significant association.  