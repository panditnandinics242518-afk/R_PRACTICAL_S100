# Load dataset
salary <- read.csv("C:/Users/Arvind/Downloads/Salary_dataset.csv")

# Linear Regression Model
linear_model <- lm(Salary ~ YearsExperience, data = salary)

# Scatter plot with regression line
plot(salary$YearsExperience, salary$Salary,
     main = "Linear Regression: Salary vs Years of Experience",
     xlab = "Years of Experience",
     ylab = "Salary",
     pch = 16)

abline(linear_model, lwd = 2)
