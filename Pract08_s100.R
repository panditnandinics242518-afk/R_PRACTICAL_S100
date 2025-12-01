install.packages("tidyr")
library(dplyr)
library(tidyr) # Contains replace_na()

retail_df <- read.csv("C:/Users/itlab/Downloads/S100/Retail Product.csv", na.strings = c("", "NA"))

print("--- 1. Original Data (First 6 Rows) ---")
print(head(retail_df))

print("--- Count of Missing Values per Column ---")
print(colSums(is.na(retail_df)))

# 2. METHOD A: REMOVE MISSING VALUES (na.omit)
clean_omit <- na.omit(retail_df)
print("--- 2. Data after na.omit() ---")
print(paste("Original rows:", nrow(retail_df)))

print(paste("Rows remaining:", nrow(clean_omit)))
print(head(clean_omit))

# 3. METHOD B: REPLACE MISSING VALUES (replace_na)

retail_df$Price <- as.numeric(retail_df$Price)
avg_price <- mean(retail_df$Price, na.rm = TRUE)

clean_replace <- retail_df %>%
  replace_na(list(
    Category = "Unknown",
    Discount = 0,
    Stock = "Check Warehouse",
    Price = avg_price
  ))
print("--- 3. Data after replace_na() ---")
print(clean_replace[3, ]) 
print(head(clean_replace))

print("--- Remaining NAs after replacement ---")
print(colSums(is.na(clean_replace)))
      
  
      