-- 5. Deal Size Breakdown: How much revenue comes from Small, Medium, and Large deals

SELECT
		DEALSIZE,
		COUNT(ORDERNUMBER) AS Total_Transactions,
		CONCAT(ROUND(SUM(SALES) / 1000000, 2), ' M')  AS Total_Revenue_In_Millions,
		ROUND(AVG(SALES), 2) AS Avg_Transactions_Values
FROM SalesData
WHERE STATUS = 'Shipped'
GROUP BY DEALSIZE
ORDER BY Total_Revenue_In_Millions DESC;