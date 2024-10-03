--problem ->Calculate the average daily rate of all available cars.

SELECT AVG(dailyRate) AS avgDailyRate 
FROM Vehicle 
WHERE status = 'available';
