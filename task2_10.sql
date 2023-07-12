--What is the total number of shooting deaths per year? The task is to calculates the total number of deaths caused by shooting each year.(In Decreasing order)
SELECT YEAR(incident_date) AS incident_year, COUNT(*) AS total_deaths
FROM fatalities_cleaned
WHERE description LIKE '%shot%'
GROUP BY YEAR(incident_date)
ORDER BY total_deaths DESC;
