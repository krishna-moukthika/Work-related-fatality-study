--Select the last 5 from the previous query. The task is to calculates the last 5 fatalities during welding.
SELECT *
FROM fatalities_cleaned
WHERE description LIKE '%weld%'
ORDER BY incident_date DESC
LIMIT 5;
