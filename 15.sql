--problem -> List Car Details for Each Lease

SELECT Lease.*, Vehicle.*
FROM Lease
JOIN Vehicle ON Lease.vehicleID = Vehicle.vehicleID;
