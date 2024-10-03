--problem ->Find the car with the highest daily rate.

SELECT * FROM Vehicle 
ORDER BY dailyRate DESC
LIMIT 1;
