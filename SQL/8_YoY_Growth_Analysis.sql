-- 8. Year-over-Year (YoY) Growth: How are total sales trending by Year and Quarter?

SELECT
		YEAR_ID AS Year,
		QTR_ID AS Quarters,
		COUNT(ORDERNUMBER) AS Total_Orders,
		CONCAT(ROUND(SUM(SALES) / 1000000, 2), ' M') AS Quarterly_Revenue_In_Millions
FROM SalesData
WHERE STATUS = 'Shipped'
GROUP BY YEAR_ID, QTR_ID
ORDER BY YEAR_ID, QTR_ID;