select * from [dbo].[Superstore Cleaned] 

SELECT TOP 5 Customer_Name, SUM(Sales) AS Total_Sales
FROM [dbo].[Superstore Cleaned]
GROUP BY Customer_Name
ORDER BY Total_Sales DESC

SELECT SUM(Sales) AS Total_Sales
FROM  [dbo].[Superstore Cleaned]

SELECT SUM(Profit) AS Total_Profit
FROM [dbo].[Superstore Cleaned]

SELECT Region, SUM(Sales) AS Total_Sales
FROM [dbo].[Superstore Cleaned]
GROUP BY Region
ORDER BY Total_Sales DESC

SELECT Order_Year,  Order_Month,SUM(Sales) AS Total_Sales
FROM [dbo].[Superstore Cleaned]
GROUP BY Order_Year, Order_Month
ORDER BY Order_Year, Order_Month

SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM [dbo].[Superstore Cleaned]
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit

SELECT Product_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM [dbo].[Superstore Cleaned]
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC

SELECT TOP 10  Product_Name, SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM[dbo].[Superstore Cleaned]
GROUP BY Product_Name
ORDER BY Total_Sales DESC

WITH CTE AS
(SELECT Category, Product_Name, SUM(Sales) AS Total_Sales,
DENSE_RANK() OVER  (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS Rank_No        
FROM [dbo].[Superstore Cleaned]
GROUP BY Category, Product_Name)
SELECT * FROM CTE WHERE Rank_No <= 3

SELECT Category, SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit,
ROUND((SUM(Profit) / NULLIF(SUM(Sales),0)) * 100, 2) 
AS Profit_Margin_Percentage
FROM [dbo].[Superstore Cleaned]
GROUP BY Category
ORDER BY Profit_Margin_Percentage 

SELECT Category,SUM(Sales) AS Total_Sales,
CASE
WHEN SUM(Sales) >= 100000 THEN 'High Sales'        
WHEN SUM(Sales) >= 50000 THEN 'Medium Sales'      
ELSE 'Low Sales'
END AS Sales_Performance
FROM [dbo].[Superstore Cleaned]
GROUP BY Category

SELECT Product_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit,
CASE
WHEN SUM(Profit) > 0 THEN 'Profitable'
WHEN SUM(Profit) < 0 THEN 'Loss'
ELSE 'No Profit No Loss'
END AS Profit_Status
FROM [dbo].[Superstore Cleaned]
GROUP BY Product_Name

SELECT Region,  Category, SUM(Sales) AS Total_Sales,  SUM(Profit) AS Total_Profit
FROM [dbo].[Superstore Cleaned]
GROUP BY Region, Category
ORDER BY Region, Total_Sales DESC

SELECT Order_Year, Order_Month,
SUM(Profit) AS Total_Profit
FROM [dbo].[Superstore Cleaned]
GROUP BY Order_Year, Order_Month
ORDER BY Order_Year, Order_Month

WITH MonthlySales AS
(SELECT Order_Year, Order_Month,
SUM(Sales) AS Total_Sales
FROM [dbo].[Superstore Cleaned]
GROUP BY Order_Year, Order_Month
)
SELECT Order_Year, Order_Month, Total_Sales,
LAG(Total_Sales) OVER
( ORDER BY Order_Year, Order_Month  )
AS Previous_Month_Sales
FROM MonthlySales
ORDER BY Order_Year, Order_Month   

SELECT SUM(Sales) / COUNT(DISTINCT Order_ID) AS Average_Order_Value
FROM [dbo].[Superstore Cleaned]

SELECT  Customer_Name,
COUNT(DISTINCT Order_ID) AS Order_Count
FROM [dbo].[Superstore Cleaned]
GROUP BY Customer_Name
HAVING COUNT(DISTINCT Order_ID) > 1
ORDER BY Order_Count DESC

SELECT SUM(Quantity) AS Total_Quantity
FROM [dbo].[Superstore Cleaned]




