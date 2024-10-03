--problem -> Update the daily rate for a Mercedes car to 68.

UPDATE Vehicle
SET dailyRate = 68
WHERE make = 'Mercedes' AND model = 'C-Class';
