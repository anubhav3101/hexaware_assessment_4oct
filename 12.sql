--problem --> Retrieve customers who have not made any payments.

SELECT Customer.* 
FROM Customer
WHERE customerID NOT IN (
    SELECT customerID FROM Lease
    WHERE leaseID IN (SELECT leaseID FROM Payment)
);
