--What is the number of fatalities that received a citation? The task is to calculate the total number of fatalities that received a citation.
SELECT citation, COUNT(*) AS total_citations
FROM fatalities_cleaned
WHERE citation IS NOT NULL
GROUP BY citation;
