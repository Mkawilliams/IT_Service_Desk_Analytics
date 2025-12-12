SELECT 
  assigned_to AS technician,
  COUNT(*) AS tickets_resolved,
  AVG(actual_resolution_hours) AS avg_resolution_time
FROM Tickets
WHERE status = 'Closed'
GROUP BY assigned_to;
