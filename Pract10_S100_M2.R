# Load required library
library(ggplot2)

iris_data <- read.csv("C:/Users/itlab/Downloads/S100/Iris.csv")
print(iris_data)

# Scatter plot
ggplot(iris_data, aes(x = SepalLengthCm, y = SepalWidthCm, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Sepal Width",
       x = "Sepal Length (cm)",
       y = "Sepal Width (cm)")      

ggplot(iris_data, aes(x = "", fill = Species)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Iris Species")

iris_data$Row <- 1:nrow(iris_data)

ggplot(iris_data, aes(x = Row,
                      ymin = SepalWidthCm,
                      ymax = SepalLengthCm)) +
  geom_linerange() +
  labs(title = "High–Low Chart (Iris Dataset)",
       x = "Observation Number",
       y = "Measurement Value")
