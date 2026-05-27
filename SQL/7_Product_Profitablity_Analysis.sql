-- 7. Product Profitability: Which product lines generate the highest average revenue per item?

SELECT
		PRODUCTLINE AS Prodcutline,
		COUNT(QUANTITYORDERED) AS Total_Unit_Sold,
		CONCAT(ROUND(SUM(SALES) / 1000000, 2), ' M') AS Total_Revenue_In_Millions,
		ROUND(SUM(SALES) / COUNT(QUANTITYORDERED), 2) AS Avg_Revenue_Per_Unit
FROM SalesData
WHERE STATUS = 'Shipped'
GROUP BY PRODUCTLINE
ORDER BY Avg_Revenue_Per_Unit DESC;