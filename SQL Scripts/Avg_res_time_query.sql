SELECT 
  category,
  AVG(actual_resolution_hours) AS avg_resolution_hrs
FROM Tickets
GROUP BY category;
