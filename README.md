# Multiple-Linear-Regression-using-R
<b> Multiple regression </b> is a statistical technique that can be used to analyze the relationship between a single dependent variable and several independent variables. The objective of multiple regression analysis is to use the independent variables whose values are known to predict the value of the single dependent value.

```r
#Reading heart.data.csv file
> heart.data <- read.csv("~/heart.data.csv")

> view(heart.data)

#Checking correlation between two independent variables, i.e. biking and smoking. 
#If value is b/w -1 to 1, linear regression will apply.
> cor(heart.data$biking, heart.data$smoking)
[1] 0.01513618

#Plotting the graph b/w one independent(biking) and one dependent (heart.disease) variable.
> plot(heart.data$biking, heart.data$heart.disease)

#Plotting the graph b/w one independent(smoking) and one dependent (heart.disease) variable.
> plot(heart.data$smoking, heart.data$heart.disease)

#Drawing histogram of heart.disease to check if normal distribution is there or not.
> hist(heart.data$heart.disease)

#Creating linear regression model.
> heart.disease.lm<-lm(heart.disease ~ biking + smoking, data = heart.data)

#Printing statistical summary of model.
> summary(heart.disease.lm)

Call:
lm(formula = heart.disease ~ biking + smoking, data = heart.data)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.1789 -0.4463  0.0362  0.4422  1.9331 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 14.984658   0.080137  186.99   <2e-16 ***
biking      -0.200133   0.001366 -146.53   <2e-16 ***
smoking      0.178334   0.003539   50.39   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.654 on 495 degrees of freedom
Multiple R-squared:  0.9796,	Adjusted R-squared:  0.9795 
F-statistic: 1.19e+04 on 2 and 495 DF,  p-value: < 2.2e-16

#Creating new data frame with 2 vectors of biking and smoking with new values.
> new.data <- data.frame(biking = c(56,78,90,21,20,45), smoking = c(42,32,12,33,24,21))

> new.data
  biking smoking
1     56      42
2     78      32
3     90      12
4     21      33
5     20      24
6     45      21

#Predicting heart.disease (dependent) values based upon new biking and smoking (independent) values.
> predict(heart.disease.lm, newdata = new.data)
         1          2          3          4          5          6 
11.2672315  5.0809652 -0.8873097 16.6668831 15.2620109  9.7236828 
```
