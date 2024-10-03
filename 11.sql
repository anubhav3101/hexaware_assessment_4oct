--problem -> List all payments made in the year 2023.

SELECT * FROM Payment 
WHERE YEAR(paymentDate) = 2023;
