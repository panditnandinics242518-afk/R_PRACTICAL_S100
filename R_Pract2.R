install.packages(c("readr", "psych"))

library(readr)    # For efficient data reading
library(psych)    # For descriptive statistics

my_data <- read.csv("C:/Users/itlab/Downloads/S100/sales_data.csv")

# View the first few rows
head(my_data)

tail(my_data)

dim(my_data)

cat("Dimensions (Rows, Columns): ", dim(my_data), "\n")

str(my_data)

summary(my_data)

names(my_data)
cat("Column Names: ", names(my_data), "\n")

library(psych)
describe(my_data)
