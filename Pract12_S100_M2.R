install.packages("corrplot")
library(corrplot)

numeric_data <- iris_data[, c("SepalLengthCm", "SepalWidthCm",
                              "PetalLengthCm", "PetalWidthCm")]

# Correlation matrix
cor_matrix <- cor(numeric_data)

# Display correlation matrix
print(cor_matrix)


# Plot correlation matrix
corrplot(cor_matrix, method = "color", type = "upper",
         tl.col = "black", tl.srt = 45, addCoef.col = "black")
