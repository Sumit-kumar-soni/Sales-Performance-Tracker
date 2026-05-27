-- 3. Reps consistently missing quarterly quotas

WITH QuarterlyTerritorySales AS(
	SELECT
			TERRITORY AS Territiory,
			YEAR_ID AS Year,
			QTR_ID AS Quarterly,
			ROUND(SUM(SALES), 2) AS Total_Quarterly_Sales
	FROM SalesData
	GROUP BY TERRITORY, YEAR_ID, QTR_ID
)

SELECT
		Territiory,
		COUNT(Quarterly) AS Quarters_Missed
FROM QuarterlyTerritorySales
WHERE Total_Quarterly_Sales < 100000
GROUP BY Territiory
HAVING COUNT(Quarterly) > 2;