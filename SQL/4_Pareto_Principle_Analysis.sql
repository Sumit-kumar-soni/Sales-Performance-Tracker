-- 4. The VIP Client List: Who are our top 5 customers by total revenue?
-- The Pareto Principle usually applies to sales—80% of your revenue comes from 20% of your customers

SELECT	TOP 5
		CONCAT(CONTACTFIRSTNAME,' ', CONTACTLASTNAME) AS Customer_Name,
		COUNTRY AS Country,
		ROUND(SUM(SALES), 2) AS Total_Lifetime_Value,
		COUNT(ORDERNUMBER) AS Total_Ordered_Placed
FROM SalesData
GROUP BY CONCAT(CONTACTFIRSTNAME,' ', CONTACTLASTNAME), COUNTRY
ORDER BY Total_Lifetime_Value DESC;