-- 6. Fulfillment Risk: What is the order cancellation rate by Country

SELECT
		COUNTRY,
		COUNT(ORDERNUMBER) AS Total_Orders,
		SUM(CASE WHEN STATUS IN ('Disputed' , 'On Hold' , 'Cancelled') THEN 1 ELSE 0 END) AS Canceled_Orders,
		ROUND(CAST(SUM(CASE WHEN STATUS IN ('Disputed' , 'On Hold' , 'Cancelled') THEN 1 ELSE 0 END) AS FLOAT) / COUNT(ORDERNUMBER) * 100, 2) AS Order_Cancellation_rate
FROM SalesData
GROUP BY COUNTRY
ORDER BY Order_Cancellation_rate DESC