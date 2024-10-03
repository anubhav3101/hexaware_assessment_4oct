--problem -> Retrieve Car Details and Their Total Payments

SELECT Vehicle.*, SUM(Payment.amount) AS totalPayments
FROM Vehicle
JOIN Lease ON Vehicle.vehicleID = Lease.vehicleID
JOIN Payment ON Lease.leaseID = Payment.leaseID
GROUP BY Vehicle.vehicleID;
