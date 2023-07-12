--What are the top 5 states that had the most workplace fatalities from stabbings? The task is to calculates the top 5 states which have most fatal incidents happed from stabbing.
SELECT state, COUNT(*) AS num_fatalities
FROM fatalities_cleaned
WHERE description LIKE '%stabbed%'
GROUP BY state
ORDER BY num_fatalities DESC
LIMIT 5;
