--problem -> List All Cars with Their Current Lease Information

SELECT Vehicle.*, Lease.*
FROM Vehicle
LEFT JOIN Lease ON Vehicle.vehicleID = Lease.vehicleID
WHERE Lease.endDate >= CURRENT_DATE;
