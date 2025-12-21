# Load dataset
lang_data <- read.csv("C:/Users/Arvind/Downloads/programming language trend over time.csv")

# Check column names
colnames(lang_data)

# Create contingency table
lang_table <- rbind(
  Python = lang_data$Python,
  Java   = lang_data$Java,
  C      = lang_data$C..
)

# Chi-square test
chisq.test(lang_table)
