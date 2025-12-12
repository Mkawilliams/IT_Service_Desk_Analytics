SELECT device_type, AVG(uptime_percentage) AS avg_uptime
FROM Devices
GROUP BY device_type;
