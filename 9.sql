--problem -> Retrieve all cars leased by a specific customer

-- Replace 'x' with the customerID.
SELECT Vehicle.* 
FROM Lease
JOIN Vehicle ON Lease.vehicleID = Vehicle.vehicleID
WHERE Lease.customerID = x;
