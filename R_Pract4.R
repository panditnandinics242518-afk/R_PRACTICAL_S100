install.packages("dplyr")

library(dplyr)

library(readr) # For efficient reading

student <- read_csv("C:/Users/itlab/Downloads/S100/StudentPerformanceFactors.csv")

head(student)


# Example 1: Single Condition (Pipe Operator |>)
# Filter students with exam score above 80
high_exam_subset <- subset(student, Exam_Score > 80)

cat("Number of students with exam score > 80:", nrow(high_exam_subset), "\n")
head(high_exam_subset)


# Example 2: Multiple Conditions (AND)
# Students who studied > 20 hours AND had attendance > 90%
high_study_high_attendance <- subset(student, 
                                     Hours_Studied > 20 & Attendance > 90)

cat("High study + high attendance:", 
    nrow(high_study_high_attendance), "\n")
head(high_study_high_attendance)


# Example 3: Multiple Conditions (OR)
# Students who sleep more than 8 hours OR do extracurricular activities
sleep_or_extracurricular <- subset(student, 
                                   Sleep_Hours > 8 | Extracurricular_Activities == "Yes")
cat("Sleep > 8 hours OR extracurricular:", 
    nrow(sleep_or_extracurricular), "\n")
head(sleep_or_extracurricular)


# METHOD 2: Using dplyr::filter()
# -----------------------------------------------------------

# Example 1: Single Condition (Pipe Operator)
# Students scoring above 85 marks in exams
high_exam_score <- student |> 
  filter(Exam_Score > 80)
cat("Students with exam score > 80:", 
    nrow(high_exam_score), "\n")
head(high_exam_score)


# Example 2: Multiple Conditions (AND using commas)
# Students with low sleep (<6 hours) AND low motivation
low_sleep_low_motivation <- student |> 
  filter(Sleep_Hours < 8, Motivation_Level == "Low")

cat("Low sleep + low motivation:", 
    nrow(low_sleep_low_motivation), "\n")
head(low_sleep_low_motivation)


# Example 3: Using %in% operator
# Filter by school type: Public or Private
school_type_filter <- student |>
  filter(School_Type %in% c("Public_School", "Private_School"))

cat("School type Public or Private:", 
    nrow(school_type_filter), "\n")
table(school_type_filter$School_Type)
