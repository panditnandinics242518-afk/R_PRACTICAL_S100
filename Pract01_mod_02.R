install.packages(c("psych", "dplyr", "tidyverse"))
library(psych)
library(dplyr)
library(tidyverse)

# Load the dataset
salary <- read.csv("C:/Users/Arvind/Downloads/Salary_Data.csv")

# View first 6 records
head(salary)

# Check structure of dataset
str(salary)

# Summary statistics
summary(salary)

# Calculate mean of Salary column
mean(salary$Salary, na.rm = TRUE)

# Calculate standard deviation of Salary column
sd(salary$Salary, na.rm = TRUE)

