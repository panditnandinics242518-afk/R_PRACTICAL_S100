# Load dataset
salary_data <- read.csv("C:/Users/Arvind/Downloads/Salary_Data.csv")

str(salary_data)

# Convert Years.of.Experience to numeric
salary_data$Years.of.Experience <- as.numeric(salary_data$Years.of.Experience)

# Create Experience Groups
salary_data$Exp_Group <- cut(
  salary_data$Years.of.Experience,
  breaks = c(0, 3, 6, 10, 50),
  labels = c("Low", "Medium", "High", "Very High"),
  include.lowest = TRUE
)

# One-Way ANOVA
anova_one <- aov(Salary ~ Exp_Group, data = salary_data)
summary(anova_one)
