SELECT * FROM fashion_product.fashion_dataset;

-- 1. Top-Performing Products
SELECT Product_Name, SUM(Price) AS Total_Sales, COUNT(*) AS Sales_Count FROM fashion_product.fashion_dataset
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

-- 2. Analyze Product Ratings
SELECT Product_Name, ROUND(AVG(Rating), 2) as Ratings FROM fashion_product.fashion_dataset
GROUP BY Product_Name
ORDER BY Ratings DESC;

-- 3. Compare Brand Performance
SELECT Brand, SUM(Price) AS Total_Sales, COUNT(*) AS Sales_Count  FROM fashion_product.fashion_dataset
GROUP BY Brand
ORDER BY Total_Sales DESC;

-- 4. Analyze Brand Ratings
SELECT Brand, ROUND(AVG(Rating), 2) AS Average_Rating FROM fashion_product.fashion_dataset
GROUP BY Brand
ORDER BY Average_Rating DESC;

-- 5. Top-Performing Category
SELECT Category, SUM(Price) AS Total_Sales, COUNT(*) AS Sales_Count FROM fashion_product.fashion_dataset
GROUP BY Category
ORDER BY Total_Sales DESC;