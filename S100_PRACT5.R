install.packages(c("readr", "psych"))
library(dplyr)

data <- read.csv("D:/S100/Cleaned_Mental_Health_and_Social_Media_Balance.csv")

colnames(data)

names(data)[4]  <- "screen_time"
names(data)[5]  <- "sleep"
names(data)[6]  <- "stress"
names(data)[7]  <- "days_off"
names(data)[8]  <- "exercise"
names(data)[10] <- "happiness"

data_clean <- data

data_clean |> arrange(stress_level.1.10.) |> head(5)
