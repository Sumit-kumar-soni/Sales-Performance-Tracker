-- 1. Pivot to "Discount Margin" Or "Discount Tracking"

SELECT
		PRODUCTLINE,
		CONCAT(ROUND(SUM(SALES) / 1000000, 2), ' M') AS Total_Revenue_In_Millions,
		CONCAT(ROUND(SUM(QUANTITYORDERED * MSRP) / 1000000 , 2), ' M')  AS Potential_Revenue_In_Millions,
		ROUND(SUM((MSRP - PRICEEACH) * QUANTITYORDERED), 2) AS Discount_Amount_Given,
		ROUND(SUM((MSRP - PRICEEACH) * QUANTITYORDERED) / SUM(QUANTITYORDERED * MSRP) * 100, 2) AS Discount_Percentage
FROM SalesData
WHERE STATUS = 'Shipped'
GROUP BY PRODUCTLINE
ORDER BY Total_Revenue_In_Millions DESC;