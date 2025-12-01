library(dplyr)

data_main <- read.csv("C:/Users/itlab/Downloads/S100/Mental_Health_and_Social_Media_Balance_Dataset.csv")
names(data_main)

print("--- Original Dataset ---")
print(head(data_main))

# 2. CREATE TWO SUBSETS FOR MERGING

# Dataset A → Basic Info
data_A <- data_main[, c("User_ID", "Age", "Gender")]

# Dataset B: Screen, Sleep, Stress, Happiness
data_B <- data_main[, c("User_ID", 
                        "Daily_Screen_Time.hrs.",
                        "Sleep_Quality.1.10.",
                        "Stress_Level.1.10.",
                        "Happiness_Index.1.10.")]

print("--- Dataset A ---")
print(head(data_A))

print("--- Dataset B (Mental Health Info) ---")
print(head(data_B))

# 3. MERGE (Joining Columns)
merged_data <- merge(data_A, data_B, by = "User_ID")

print("--- Merged Dataset ---")
print(head(merged_data))

data_new_users <- data.frame(
  User_ID = c("U151", "U152"),
  Age = c(29, 33),
  Gender = c("Female", "Male"),
  Daily_Screen_Time.hrs = c(4.5, 6.2),
  Sleep_Quality.1.10 = c(7, 6),
  Stress_Level.1.10 = c(5, 7),
  Happiness_Index.1.10 = c(8, 7)
)

final_dataset <- bind_rows(merged_data, data_new_users)

print("--- Final Appended Dataset ---")
print(head(final_dataset))
