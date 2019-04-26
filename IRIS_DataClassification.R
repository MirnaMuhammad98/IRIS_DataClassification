#Sepal.Length and Petal.Length (Setosa)
summary(iris[c(1:50), c(1, 3)])
#Sepal.Length    Petal.Length  
#Min.   :4.300   Min.   :1.000  
#1st Qu.:4.800   1st Qu.:1.400  
#Median :5.000   Median :1.500  
#Mean   :5.006   Mean   :1.462  
#3rd Qu.:5.200   3rd Qu.:1.575  
#Max.   :5.800   Max.   :1.900 

#calculating the Estimate Point(Mean) Sepal.Length and Petal.Length for Setosa Species
vec <- c(mean(iris[c(1:50), c(1)]),
         mean(iris[c(1:50), c(3)]))
print(vec)
# a vector containtg estimate points of Sepal Lengths and Petal Lengths
#[1] 5.006 1.462

#Ploting the Sepal.Length
hist(iris[c(1:50), c(1)], 
     col = "blue", 
     main = "Histogram of Sepal.Length (Setosa)", 
     xlab="Sepal.Length")
boxplot(iris[c(1:50), c(1)],
        ylab = "Lengths",
        col = c("blue"),
        xlab = "Sepal.Length",
        main = "Boxplot of Sepal Length (Setosa)")
#Ploting the Petal.Length
hist(iris[c(1:50), c(3)], 
     col = "red", 
     main = "Histogram of Petal.Length (Setosa)",
     xlab="Petal.Length")
boxplot(iris[c(1:50), c(3)],
        ylab = "Lengths",
        col = c("red"),
        xlab = "Petal.Length",
        main = "Boxplot of Petal Length (Setosa)")
#Calculating and Plotting the correlation between the Sepal and Petal Lengths
sepal.Length <- iris[c(1:50), c(1)] #Sepal Lengths for Setosa Species
petal.Length <- iris[c(1:50), c(3)] #Petal Lengths for Setosa Species
r <- cor(sepal.Length, petal.Length)
print(r)
#Pearson's r
#[1] 0.2671758
plot(sepal.Length, petal.Length,
     xlab = "Sepal.Length",
     ylab = "Petal.Length", 
     main = "Sepal vs Petal")
#The Coefficient of Determination r^2
print(r^2)
#[1] 0.07138289
#only 7.13% of the Petal Lengths can be descibed
#by the Sepal Length, and that indicates there's no correalation between
#the Sepal Length and the Petal Length in the Setosa Species

#hypothesis test for Sepal Length Mean where it is one-sample t-test with Ha < 5
sepalHypoTest <- t.test(sepal.Length, mu = 5, alternative = "less", conf.level=0.95)
print(sepalHypoTest)
#data:  sepal.Length
#t = 0.12036, df = 49, p-value = 0.5477
#alternative hypothesis: true mean is less than 5
#95 percent confidence interval:
#  -Inf 5.089575
#sample estimates:
#  mean of x 
#     5.006 