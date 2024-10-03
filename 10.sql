--problem -> Find the details of the most recent lease

SELECT * FROM Lease 
ORDER BY startDate DESC
LIMIT 1;
