library(ggplot2)

ggplot(iris_data, aes(x = SepalLengthCm)) +
  geom_histogram(bins = 15) +
  labs(title = "Histogram of Sepal Length",
       x = "Sepal Length (cm)",
       y = "Frequency")

ggplot(iris_data, aes(x = Species, y = PetalLengthCm)) +
  geom_boxplot(fill = "Orange") +
  labs(title = "Box Plot of Petal Length by Species",
       x = "Species",
       y = "Petal Length (cm)")
