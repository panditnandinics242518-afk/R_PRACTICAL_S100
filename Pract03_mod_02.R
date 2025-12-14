library(psych)
library(dplyr)
library(tidyverse)

phones <- read.csv("C:/Users/Arvind/Downloads/Smartphones_cleaned_dataset.csv")

# View columns
names(phones)

# Convert has_5g to factor (recommended)
phones$has_5g <- as.factor(phones$has_5g)

# Cross-tabulation
brand_5g_table <- table(phones$brand_name, phones$has_5g)

# Display table
brand_5g_table
