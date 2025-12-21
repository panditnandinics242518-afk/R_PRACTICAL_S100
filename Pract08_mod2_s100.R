# Load dataset
phone <- read.csv("C:/Users/Arvind/Downloads/Smartphones_cleaned_dataset.csv")
colnames(phone)

# Convert factors
phone$brand_name <- as.factor(phone$brand_name)
phone$os <- as.factor(phone$os)

# Two-Way ANOVA
anova_two <- aov(price ~ brand_name * os, data = phone)

# Display result
summary(anova_two)
