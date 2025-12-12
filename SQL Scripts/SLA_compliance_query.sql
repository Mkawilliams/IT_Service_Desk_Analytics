SELECT 
  COUNT(*) AS total_tickets,
  SUM(CASE WHEN actual_resolution_hours <= sla_hours THEN 1 END) AS met_sla,
  ROUND(
    SUM(CASE WHEN actual_resolution_hours <= sla_hours THEN 1 END) * 100.0 / COUNT(*),
    2
  ) AS sla_compliance
FROM Tickets;
