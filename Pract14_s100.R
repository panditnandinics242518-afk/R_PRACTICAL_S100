install.packages("lubridate")
library(lubridate)
library(dplyr)

events_df <- data.frame(
  EventCode = c("E101", "E102", "E103", "E104"),
  EventDate = c("2022-05-10", "2023-08-19", "2024-11-05", "2025-03-21")
)

# 2. PARSE AND EXTRACT DATE COMPONENTS

processed_data <- events_df %>%
  mutate(
    Parsed_Date = ymd(EventDate),                  # Convert text to date format
    Year = year(Parsed_Date),                      # Extract year
    Month_No = month(Parsed_Date),                 # Extract month number
    Month_Name = month(Parsed_Date, label = TRUE), # Extract short month name
    Day_No = day(Parsed_Date),                     # Extract day of month
    Weekday_No = wday(Parsed_Date),                # 1=Sun, 7=Sat
    Weekday_Name = wday(Parsed_Date, label = TRUE, abbr = FALSE), # Full weekday name
    Quarter = quarter(Parsed_Date),                # Quarter (1–4)
    Day_of_Year = yday(Parsed_Date)                # Day number (1–366)
  )

print("--- Extracted Components from New Dataset ---")
print(processed_data)

# 3. SYSTEM DATE / CURRENT DATE-TIME EXTRACTION

current_time <- now()

print("--- Current System Time Components ---")
print(paste("Current Year:", year(current_time)))
print(paste("Current Month:", month(current_time)))
print(paste("Current Day:", day(current_time)))
print(paste("Current Hour:", hour(current_time)))
print(paste("Current Minute:", minute(current_time)))
