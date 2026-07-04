## FINAL PROJECT
# -----------------------------------------
# Customer Spending Analysis
# Multiple Linear Regression
# -----------------------------------------

# 1. Load Required Libraries
library(tidyverse)
library(car)
library(corrplot)

# 2. Load Dataset
library(readr)
Mall_Customers_Enhanced <- read_csv("C:/Users/click/Downloads/Mall_Customers_Enhanced.csv")
View(Mall_Customers_Enhanced)

# 3. Data Inspection
str(data)
summary(Mall_Customers_Enhanced)

# 4. Data Cleaning
# Check missing values
colSums(is.na(Mall_Customers_Enhanced))

# Convert Gender to factor
Mall_Customers_Enhanced$Gender <- as.factor(Mall_Customers_Enhanced$Gender)

# 5. Exploratory Data Analysis (EDA)

# Loading variables
CustomerID <- Mall_Customers_Enhanced$CustomerID
Gender <- Mall_Customers_Enhanced$Gender
Age <- Mall_Customers_Enhanced$Age
Annual_Income <- Mall_Customers_Enhanced$`Annual Income (k$)`
Spending_Score <- Mall_Customers_Enhanced$`Spending Score (1-100)`
Estimated_Savings <- Mall_Customers_Enhanced$`Estimated Savings (k$)`

# Summary statistics
summary(select(Mall_Customers_Enhanced, Age,`Annual Income (k$)`,`Spending Score (1-100)`,`Estimated Savings (k$)`))

# Histograms
hist(Mall_Customers_Enhanced$`Spending Score (1-100)`, 
     main="Spending Score Distribution",
     xlab="Spending Score (1-100)", col="skyblue")

hist(Mall_Customers_Enhanced$`Annual Income (k$)`, 
     main="Annual Income Distribution",
     xlab="Annual Income (k$)", col="lightgreen")

# Boxplot
boxplot(Mall_Customers_Enhanced$`Annual Income (k$)`, main="Annual Income Boxplot", col="orange")
boxplot(Mall_Customers_Enhanced$`Spending Score (1-100)`, main="Spending Score Boxplot", col="pink")

# Correlation matrix
numeric_data <- select(Mall_Customers_Enhanced,Age,`Annual Income (k$)`, `Spending Score (1-100)`, `Estimated Savings (k$)`,`Credit Score`)

cor_matrix <- cor(numeric_data, use = "complete.obs")
library(corrplot)
corrplot(cor_matrix, method = "number")

# Scatterplots

library(ggplot2)

# --- Scatter Plot 1: Annual Income vs. Spending Score ---
ggplot(data = Mall_Customers_Enhanced, 
       aes(x = `Annual Income (k$)`, y = `Spending Score (1-100)`)) + 
  geom_point(color = "blue") + 
  labs(title = 'Income vs. Spending Score',
       x = 'Annual Income (k$)',
       y = 'Spending Score (1-100)') +
  theme_minimal()

# --- Scatter Plot 2: Age vs. Spending Score ---
ggplot(data = Mall_Customers_Enhanced, 
       aes(x = Age, y = `Spending Score (1-100)`)) + 
  geom_point(color = "darkred") + 
  labs(title = 'Age vs. Spending Score',
       x = 'Age',
       y = 'Spending Score (1-100)') +
  theme_minimal()

# 6. Model Specification & Estimation
## Multiple Linear Regression

mlr_model <- lm(`Spending Score (1-100)` ~ Age + `Annual Income (k$)` + `Estimated Savings (k$)` + Gender, data = Mall_Customers_Enhanced)

summary(mlr_model)

# 7. Model Diagnostics

# Multicollinearity
library(car)
vif(mlr_model)


# 8. Interpretation Aid
# Confidence intervals
confint(mlr_model)


# -----------------------------------------
# The End 
# -----------------------------------------
