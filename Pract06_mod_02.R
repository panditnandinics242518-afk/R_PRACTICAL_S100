library(psych)
library(dplyr)
library(tidyverse)

before_training <- c(50, 55, 60, 58, 62)
after_training  <- c(60, 66, 69, 70, 73)

# Paired t-test
t.test(before_training, after_training, paired = TRUE)
