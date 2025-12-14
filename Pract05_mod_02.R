library(psych)
library(dplyr)
library(tidyverse)

gender_marks <- data.frame(
  Gender = c("Male","Male","Male","Female","Female","Female"),
  Marks = c(65, 70, 68, 75, 78, 80)
)

gender_marks

# Independent t-test
t.test(Marks ~ Gender, data = gender_marks)
