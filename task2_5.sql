--What is the number of fatalities involving welding? The task is to calculates the total number of fatalities during welding.
SELECT COUNT(*) AS welding_fatalities
FROM fatalities_cleaned
WHERE description LIKE '%weld%';

