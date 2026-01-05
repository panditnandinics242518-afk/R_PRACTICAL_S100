lang_data <- read.csv("C:/Users/itlab/Downloads/S100/programming language trend over time.csv")

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

#goodness of fit test
observed <- c(50, 30, 20)
expected <- c(1/3, 1/3, 1/3)
chisq.test(observed, p = expected)


