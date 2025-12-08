
library(dplyr)
library(tidyr)

# ==============================================================================
# 1. SETUP: Import Dataset
# ==============================================================================

df <- read.csv("C:/Users/itlab/Downloads/S100/Cleaned_Data_Science_Student_Marks.csv",
               na.strings = c("", "NA"))

# Add RowID and keep useful columns
df <- df %>%
  mutate(RowID = row_number()) %>%
  select(RowID, student_id, location, age,
         sql_marks, excel_marks, python_marks,
         power_bi_marks, english_marks)

print("--- 1. Original Wide Data ---")
print(head(df))

# ==============================================================================
# 2. PIVOT_LONGER (Wide → Long)
# ==============================================================================

# Convert all marks columns into Subject + Score format

long_df <- df %>%
  pivot_longer(
    cols = c(sql_marks, excel_marks, python_marks,
             power_bi_marks, english_marks),
    names_to = "Subject",
    values_to = "Score"
  )

print("--- 2. Long Format (pivot_longer) ---")
print(head(long_df, 10))

# ==============================================================================
# 3. PIVOT_WIDER (Long → Wide)
# ==============================================================================

wide_df <- long_df %>%
  pivot_wider(
    names_from = Subject,
    values_from = Score
  )

print("--- 3. Wide Format (Back to Original) ---")
print(head(wide_df))

# ==============================================================================
# 4. ADVANCED EXAMPLE (Reshaping by Location)
# ==============================================================================

# Example: show SQL marks for every RowID, pivoting locations as columns

location_pivot <- df %>%
  select(RowID, location, sql_marks) %>%
  pivot_wider(
    names_from = location,
    values_from = sql_marks
  )

print("--- 4. Location Pivot (SQL Marks by Location) ---")
print(head(location_pivot))
