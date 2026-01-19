install.packages("writexl")
library(writexl)

#pract13
write.csv(salary, "C:/Users/itlab/Downloads/Salary_dataset_export.csv", row.names = FALSE)

# Add predictions to dataset
salary$Predicted_Salary <- predict(linear_model, salary)

# Export to CSV
write.csv(salary, "C:/Users/itlab/Downloads/Salary_with_predictions.csv", row.names = FALSE)

write_xlsx(salary, "C:/Users/itlab/Downloads/Salary_with_predictions.xlsx")

#PDF device
pdf("C:/Users/itlab/Downloads/Salary_Regression_Plot.pdf")

# Plot inside PDF
plot(salary$YearsExperience, salary$Salary,
     main = "Linear Regression: Salary vs Years of Experience",
     xlab = "Years of Experience",
     ylab = "Salary",
     pch = 16)
abline(linear_model, lwd = 2)

# Close PDF device
dev.off()

#pract14
# Add predicted probabilities for the existing dataset
suv$Predicted_Prob <- predict(logistic_model, suv, type = "response")

# Export to CSV
write.csv(suv, "C:/Users/itlab/Downloads/SUV_with_predictions.csv", row.names = FALSE)

pred_df <- data.frame(Age = age_seq,
                      EstimatedSalary = mean(suv$EstimatedSalary),
                      Predicted_Prob = predicted_prob)

write.csv(pred_df, "C:/Users/itlab/Downloads/Predicted_Probabilities.csv", row.names = FALSE)
write_xlsx(pred_df, "C:/Users/itlab/Downloads/Predicted_Probabilities.xlsx")

#Open PDF device
pdf("C:/Users/itlab/Downloads/Logistic_Regression_Plot.pdf")

# Plot the S-shaped probability curve
plot(age_seq, predicted_prob,
     type = "l",
     lwd = 2,
     main = "Logistic Regression (S-shaped Curve)",
     xlab = "Age",
     ylab = "Probability of Purchase",
     ylim = c(0,1))

# Optional: add a horizontal line at 0.5 probability
abline(h = 0.5, col = "red", lty = 2)

# Close PDF device
dev.off()




