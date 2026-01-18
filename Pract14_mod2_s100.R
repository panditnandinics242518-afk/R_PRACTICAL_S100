# Load dataset
suv <- read.csv("C:/Users/Arvind/Downloads/suv_data.csv")

# View column names and structure
names(suv)
str(suv)

suv$Purchased <- as.factor(suv$Purchased)

logistic_model <- glm(Purchased ~ Age + EstimatedSalary,
                      data = suv,
                      family = binomial)

# Model summary
summary(logistic_model)

# Create smooth sequence of Age values
age_seq <- seq(min(suv$Age),
               max(suv$Age),
               length.out = 100)

# Predict probabilities
predicted_prob <- predict(logistic_model,
                          newdata = data.frame(
                            Age = age_seq,
                            EstimatedSalary = mean(suv$EstimatedSalary)
                          ),
                          type = "response")

# Plot S-shaped curve
plot(age_seq, predicted_prob,
     type = "l",
     lwd = 2,
     main = "Logistic Regression (S-shaped Curve)",
     xlab = "Age",
     ylab = "Probability of Purchase",
     ylim = c(0,1))
