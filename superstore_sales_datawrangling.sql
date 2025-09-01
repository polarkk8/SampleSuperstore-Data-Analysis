-- Checking for total count of Furniture sales from the State of Florida --
SELECT * FROM superstore.superstore_sales;
SELECT COUNT(Sales) FROM superstore_sales
WHERE State = 'Florida' AND Category = 'Furniture';

-- Checking for the 100 highest Sales --
SELECT * FROM superstore_sales
ORDER BY Sales DESC
LIMIT 100;

-- Checking profit earned for 'Technology' Category --
SELECT SUM(Profit) From superstore_sales
WHERE Category = 'Technology';

-- Checking total quantitiy of products sold for New York City --
SELECT SUM(Quantity) FROM superstore_sales
WHERE City = 'New York City';

-- Checking profit ratio for Superstore --
SELECT SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit,
	(SUM(Profit) / SUM(Sales)) * 100 AS ProfitMargin
    FROM superstore_sales;

-- Checking profit ratio for SubCategory 'Chairs' --
SELECT SUM(Sales) AS Chairs_TotalSales, SUM(Profit) AS Chairs_TotalProfit,
(SUM(Profit) / SUM(Sales)) * 100 AS Chairs_ProfitMargin
    FROM superstore_sales
    GROUP BY SubCategory = 'Chairs';

-- Checking total number of Sales for each State --
SELECT State, SUM(Sales) FROM superstore_sales
GROUP BY State
ORDER BY State ASC;

-- Checking the top 20 States with the most sales --
SELECT State, SUM(Sales) AS TotalSales_PerState FROM superstore_sales
GROUP BY State
ORDER BY TotalSales_PerState DESC
LIMIT 20;

-- Checking the top 20 Cities with the most sales --
SELECT City, SUM(Sales) AS TotalSales_PerCity FROM superstore_sales
GROUP BY City
ORDER BY TotalSales_PerCity DESC
LIMIT 20;

-- Checking the Total Sales for each Category --
SELECT Category, SUM(Sales) AS TotalSales_PerCategory FROM superstore_sales
GROUP BY Category;

-- Checking the top 10 SubCategories with the most sales --
SELECT SubCategory, SUM(Sales) AS TotalSales_PerSubCategory FROM superstore_sales
GROUP BY SubCategory
ORDER BY TotalSales_PerSubCategory DESC
LIMIT 10;



  
  












