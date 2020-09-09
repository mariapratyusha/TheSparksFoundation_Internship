#Simple Regression
data <- read.csv("C:/Users/Pratyu/Desktop/simpleregression.csv")
x <- data[,1]
y <- data[,2]

# Apply the lm() function.
relation <- lm(y~x)

#Visualize the data for better understanding
plot(y,x,col = "blue",main = "Hour and Score Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,
     xlab = "Hours spent for studying",ylab = "Percentage of marks")
legend(x=20, y= 8,legend = "Score", col = "blue", pch=16)
#This plot clearly indicates 

# Find score of the person who studied for 9.25 hours
a <- data.frame(x = 9.25)
result <-  predict(relation,a)
print(result)