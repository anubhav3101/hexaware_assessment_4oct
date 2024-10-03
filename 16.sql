--problem -> Retrieve Details of Active Leases with Customer and Car Information.

SELECT Lease.*, Customer.*, Vehicle.*
FROM Lease
JOIN Customer ON Lease.customerID = Customer.customerID
JOIN Vehicle ON Lease.vehicleID = Vehicle.vehicleID
WHERE Lease.endDate >= CURRENT_DATE;
