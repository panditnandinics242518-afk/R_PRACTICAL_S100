

library(dplyr)

sales_df <- data.frame(
  SaleID = c(201, 202, 202, 203, 204, 201, 204),
  Customer = c("Nisha", "Arjun", "Arjun", "Kavya", "Rohan", "Nisha", "Rohan"),
  Product = c("Keyboard", "Mouse", "Mouse", "Laptop", "Headset", "Keyboard", "Speaker")
)

print("--- 1. Original Dataset (7 rows including duplicates) ---")
print(sales_df)

# 2. IDENTIFY DUPLICATES (before removing)

duplicates_report <- sales_df %>%
  group_by(SaleID, Customer, Product) %>%
  count() %>% 
  filter(n > 1)

print("--- 2. Duplicate Rows (Exact duplicates found) ---")
print(duplicates_report)

# 3. REMOVE EXACT DUPLICATES

clean_exact <- sales_df %>%
  distinct()

print("--- 3. Dataset After Removing Exact Duplicates ---")
print(clean_exact)


# 4. REMOVE DUPLICATES BASED ON SPECIFIC COLUMN

unique_customers <- sales_df %>%
  distinct(Customer, .keep_all = TRUE)

print("--- 4. Unique Customers Only (Partial Duplicates Removed) ---")
print(unique_customers)
