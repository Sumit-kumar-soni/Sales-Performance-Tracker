-- 10. Customer Frequency: Which customers order from us the most often?

SELECT
		CONCAT(CONTACTFIRSTNAME, ' ', CONTACTLASTNAME) AS Customer_Name,
		CITY AS City,
		COUNTRY AS Country,
		COUNT(DISTINCT ORDERNUMBER) AS Total_Unqiue_Orders,
		CONCAT(ROUND(SUM(SALES) / 1000000, 2), ' M') AS Total_Revenue_In_Millions
FROM SalesData
WHERE STATUS = 'Shipped'
GROUP BY CONCAT(CONTACTFIRSTNAME, ' ', CONTACTLASTNAME), CITY, COUNTRY
ORDER BY Total_Unqiue_Orders DESC;