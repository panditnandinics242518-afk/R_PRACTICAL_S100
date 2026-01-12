
numeric_data <- iris_data[, c("SepalLengthCm", "SepalWidthCm",
                              "PetalLengthCm", "PetalWidthCm")]

# Correlation matrix
cor_matrix <- cor(numeric_data)

# Display correlation matrix
print(cor_matrix)
