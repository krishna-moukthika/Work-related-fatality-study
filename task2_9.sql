--What are the top 10 states that had the most workplace fatalities from shootings? The task is to calculates the top 10 states which have most fatal incidents happed from shooting.
SELECT state, COUNT(*) AS num_fatalities
FROM fatalities_cleaned
WHERE description LIKE '%shot%'
GROUP BY state
ORDER BY num_fatalities DESC
LIMIT 10;
