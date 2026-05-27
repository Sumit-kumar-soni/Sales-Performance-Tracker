-- 9. Discount Abuse: Which specific products are being sold below MSRP most often?

SELECT	TOP 10
		PRODUCTLINE AS Producline,
		PRODUCTCODE AS Productcode,
		MAX(MSRP) AS Target_MSRP,
		ROUND(AVG(PRICEEACH), 2) AS Avg_Actual_Sale_Price,
		ROUND(MAX(MSRP) - AVG(PRICEEACH), 2) AS Avg_Discount_Given
FROM SalesData
WHERE PRICEEACH < MSRP AND STATUS = 'Shipped'
GROUP BY PRODUCTLINE, PRODUCTCODE
ORDER BY Avg_Discount_Given DESC;