SELECT category, COUNT(*) AS ticket_count
FROM Tickets
GROUP BY category
ORDER BY ticket_count DESC;
