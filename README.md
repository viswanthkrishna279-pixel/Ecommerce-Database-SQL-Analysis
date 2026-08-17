# Ecommerce Database SQL Analysis

## 📌 Project Overview

This project analyzes ecommerce sales data using SQL Server to generate business insights related to customers, products, sales, profit, regions, categories, and monthly performance.

The project demonstrates practical SQL skills including aggregation, CTEs, window functions, ranking, CASE statements, and business-oriented analysis.

## 🎯 Objectives

- Analyze total sales and total profit.
- Identify top customers and products.
- Analyze regional and category performance.
- Identify loss-making products.
- Calculate profit margins.
- Analyze monthly sales and profit trends.
- Find top products within each category.
- Compare current sales with previous-month sales.
- Calculate Average Order Value.
- Identify repeat customers.
- Calculate total quantity sold.

## 🛠️ Tools & Technologies

- SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL
- CSV Dataset

## 📊 SQL Concepts Used

- SELECT
- GROUP BY
- ORDER BY
- HAVING
- Aggregate Functions
- CASE Statements
- CTE (Common Table Expression)
- DENSE_RANK()
- LAG()
- PARTITION BY
- DISTINCT
- COUNT()
- SUM()
- ROUND()
- NULLIF()

## 🔍 Key Analysis

### 1. Top 5 Customers
Identifies customers with the highest total sales.

### 2. Sales & Profit Analysis
Calculates total sales and total profit.

### 3. Regional Sales
Compares sales performance across regions.

### 4. Monthly Sales & Profit
Analyzes sales and profit by year and month.

### 5. Loss-Making Products
Identifies products with negative total profit.

### 6. Top 10 Products
Finds the top 10 products based on total sales.

### 7. Top 3 Products by Category
Uses `CTE`, `DENSE_RANK()` and `PARTITION BY` to rank products within each category.

### 8. Profit Margin
Calculates category-level profit margin percentage.

### 9. Sales Performance
Uses `CASE` statements to classify categories as High, Medium, or Low Sales.

### 10. Product Profitability
Classifies products as Profitable, Loss, or No Profit No Loss.

### 11. Region & Category Analysis
Analyzes sales and profit by region and category.

### 12. Previous Month Sales
Uses `LAG()` to compare monthly sales with the previous month.

### 13. Average Order Value
Calculates Average Order Value using total sales and distinct orders.

### 14. Repeat Customers
Identifies customers who placed more than one order.

### 15. Total Quantity
Calculates the total quantity of products sold.

## 📂 Project Structure

```text
Ecommerce-Database-SQL-Analysis/
│
├── SQL project.sql
├── Ecommerce Sales Data.csv
└── README.md
```

> **Note:** Add your original `Ecommerce Sales Data.csv` file to this folder before uploading the project to GitHub. The uploaded file provided here contains the SQL script, so the CSV dataset was not available to include automatically.

## 🚀 How to Run

1. Open SQL Server Management Studio (SSMS).
2. Create or select your database.
3. Import the ecommerce/superstore CSV dataset.
4. Make sure the table name matches `[dbo].[Superstore Cleaned]`.
5. Open `SQL project.sql`.
6. Execute the queries.
7. Review the results and business insights.

## 💡 Skills Demonstrated

**SQL | SQL Server | Data Analysis | Business Analysis | CTE | Window Functions | DENSE_RANK | LAG | CASE Statements | Aggregations**

## 👨‍💻 Author

**Maheswaram Viswanth Naga Venkata Krishna**

Aspiring Data Analyst / SQL Developer
