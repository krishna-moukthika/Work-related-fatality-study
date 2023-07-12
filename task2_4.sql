--What day of the week has the most fatalities and what is the overall percentage? The task is to calculates day of the week that reported more number of fatalities and percentage(Rounds the percentage to two decimal places).
SELECT
  day_of_week,
  COUNT(*) AS total_fatalities,
  ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM fatalities_cleaned), 2) AS percentage
FROM
  fatalities_cleaned
GROUP BY
  day_of_week
ORDER BY
  total_fatalities DESC;
