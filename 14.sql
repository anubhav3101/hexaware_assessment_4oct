--problem ->  Calculate Total Payments for Each Customer

SELECT Customer.*, SUM(Payment.amount) AS totalPayments
FROM Customer
JOIN Lease ON Customer.customerID = Lease.customerID
JOIN Payment ON Lease.leaseID = Payment.leaseID
GROUP BY Customer.customerID;
