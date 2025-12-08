library(dplyr)

iris_df <- read.csv("C:/Users/itlab/Downloads/S100/Iris.csv")               
flower_df <- read.csv("C:/Users/itlab/Downloads/S100/flower_dataset.csv")   

print("--- Column Names Before Cleaning ---")
print(names(iris_df))
print(names(flower_df))


iris_clean <- iris_df[, c("Species", "SepalLengthCm")]
names(iris_clean) <- c("Species", "Height")  


# --- Prepare FLOWER dataset ---
flower_clean <- flower_df[, c("species", "height_cm")]
names(flower_clean) <- c("Species", "Height")


# Convert heights to numeric
iris_clean$Height <- as.numeric(iris_clean$Height)
flower_clean$Height <- as.numeric(flower_clean$Height)


# 3. VERTICAL CONCATENATION USING rbind()

combined_data <- rbind(iris_clean, flower_clean)

# 4. OUTPUT

print("--- Combined Data Summary ---")
print(paste("Rows in Iris dataset:", nrow(iris_clean)))
print(paste("Rows in Flower dataset:", nrow(flower_clean)))
print(paste("Total Expected Rows:", nrow(iris_clean) + nrow(flower_clean)))
print(paste("Total Actual Rows:", nrow(combined_data)))

print("--- Preview of Combined Data ---")
print(head(combined_data))
print(tail(combined_data))
