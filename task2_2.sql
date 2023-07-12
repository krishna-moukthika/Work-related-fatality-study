--What is the year to year change for the number of fatal incidents? The task is to calculates the year-to-year percentage changes(Round it of to nearest whole number) in the number of fatalities for each incident year, excluding the year 2022.
SELECT
  YEAR(incident_date) AS incident_year,
  COUNT(id) AS total_fatalities,
  LAG(COUNT(id)) OVER (ORDER BY YEAR(incident_date)) AS previous_year_fatalities,
  ROUND((COUNT(id) - LAG(COUNT(id)) OVER (ORDER BY YEAR(incident_date))) / LAG(COUNT(id)) OVER (ORDER BY YEAR(incident_date)) * 100) AS percentage_change
FROM
  fatalities_cleaned
WHERE
  YEAR(incident_date) != 2022
GROUP BY
  YEAR(incident_date)
ORDER BY
  YEAR(incident_date);
