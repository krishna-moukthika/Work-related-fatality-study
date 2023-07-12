--Select the top 5 states with the most fatal incidents. The task is to calculates the top 5 states which have most fatal incidents.
SELECT state, COUNT(*) AS num_fatal_incidents
FROM fatalities_cleaned
GROUP BY state
ORDER BY num_fatal_incidents DESC
LIMIT 5;
