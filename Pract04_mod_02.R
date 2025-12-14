library(psych)
library(dplyr)
library(tidyverse)

# Load dataset
lang <- read.csv("C:/Users/Arvind/Downloads/programming language trend over time.csv")
names(lang)

# View data
head(lang)

lang_clean <- na.omit(lang[, c("Python", "Java")])

# Compare popularity of Python vs Java using independent t-test
t_test_result <- t.test(lang_clean$Python, lang_clean$Java)

# Display result
t_test_result
