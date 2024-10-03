--problem -> Find all payments made by a customer with a specific phone number.

-- Replace '1234567890' with the actual phone number.
SELECT Payment.* 
FROM Payment
JOIN Lease ON Payment.leaseID = Lease.leaseID
JOIN Customer ON Lease.customerID = Customer.customerID
WHERE Customer.phoneNumber = '1234567890';
