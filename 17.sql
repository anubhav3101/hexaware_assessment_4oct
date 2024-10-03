--problem -> Find the Customer Who Has Spent the Most on Leases

SELECT Customer.*, SUM(Payment.amount) AS totalSpent
FROM Customer
JOIN Lease ON Customer.customerID = Lease.customerID
JOIN Payment ON Lease.leaseID = Payment.leaseID
GROUP BY Customer.customerID
ORDER BY totalSpent DESC
LIMIT 1;
