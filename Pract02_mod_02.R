library(psych)
library(dplyr)
library(tidyverse)

# Load dataset
jobs <- read.csv("C:/Users/Arvind/Downloads/Data_Science_Jobs_in_India.csv")
colnames(jobs)

# View structure
str(jobs)

job_table <- table(jobs$job_title)

# Display frequency table
job_table

# Proportion table
prop.table(job_table)
