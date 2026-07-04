# Customer Spending Analysis using Multiple Linear Regression in R

This project applies **Multiple Linear Regression (MLR)** in **R** to analyze customer spending behavior using demographic and financial attributes. The objective is to identify the key factors influencing customer spending and provide business insights for targeted marketing and customer segmentation.

---

## Project Overview

Customer spending analysis is an important application of predictive analytics that helps businesses understand purchasing behavior and optimize marketing strategies.

This project performs:

- Data cleaning
- Exploratory Data Analysis (EDA)
- Multiple Linear Regression
- Model diagnostics
- Business insight generation

using the **Mall Customers Enhanced Dataset**.

---

## Project Highlights

- Data preprocessing in R
- Exploratory Data Analysis (EDA)
- Multiple Linear Regression (MLR)
- Correlation Analysis
- Multicollinearity testing using VIF
- Confidence Interval estimation
- Business-oriented interpretation of results

---

## Research Question

**Which customer characteristics significantly influence spending behavior?**

---

## Dataset

The dataset contains customer demographic and financial information including:

- Customer ID
- Gender
- Age
- Annual Income
- Spending Score
- Estimated Savings
- Credit Score

Dataset location

```text
data/Mall_Customers_Enhanced.csv
```

---

## Technologies Used

- R
- tidyverse
- ggplot2
- readr
- corrplot
- car

---

## Methodology

1. Data Loading
2. Data Cleaning
3. Missing Value Analysis
4. Exploratory Data Analysis
5. Correlation Analysis
6. Multiple Linear Regression
7. Model Diagnostics
8. Business Interpretation

---

## Visualizations

The project includes:

- Spending Score Distribution
- Annual Income Distribution
- Annual Income Boxplot
- Spending Score Boxplot
- Correlation Matrix
- Income vs Spending Score
- Age vs Spending Score

---

## Model Summary

The Multiple Linear Regression model identified:

- Annual Income as a significant predictor of customer spending.
- Estimated Savings also contributed positively to spending behavior.
- Age had a relatively weak effect.
- Gender showed limited statistical significance.

The model diagnostics indicated acceptable model assumptions with no major multicollinearity issues based on Variance Inflation Factor (VIF). These findings support the use of multiple linear regression for understanding customer spending patterns. :contentReference[oaicite:0]{index=0}

---

## Business Insights

- Focus marketing campaigns on higher-income customers.
- Personalize promotions for customers with higher spending potential.
- Use customer segmentation to improve retention and revenue.
- Support data-driven business decision-making using predictive analytics. :contentReference[oaicite:1]{index=1}

---

## Repository Structure

```text
customer-spending-analysis-r/
│
├── data/
│   └── Mall_Customers_Enhanced.csv
│
├── scripts/
│   └── MLR Project script.R
│
├── reports/
│   └── Customer_Spending_Analysis_Report.pdf
├── README.md
├── LICENSE
└── .gitignore
```

---

## How to Run

Clone the repository

```bash
git clone https://github.com/yourusername/customer-spending-analysis-r.git
```

Open the R script

```text
scripts/Final_Project.R
```

Install required packages

```R
install.packages(c(
  "tidyverse",
  "readr",
  "ggplot2",
  "car",
  "corrplot"
))
```

Run the script in RStudio.

---

## Future Improvements

- Apply Ridge and Lasso Regression.
- Compare Linear Regression with Random Forest Regression.
- Develop an interactive Shiny dashboard.
- Perform customer segmentation using K-Means clustering.
- Deploy the model as a web application.

---

## Author

**Samaa Shafqat**

MS Business Analytics

SZABIST Islamabad

---

## License

This project is licensed under the MIT License.
