--problem->Delete a specific customer and all associated leases and payments

-- Replace 'x' with the customerID of the customer you want to delete.
DELETE FROM Payment WHERE leaseID IN (SELECT leaseID FROM Lease WHERE customerID = 1);
DELETE FROM Lease WHERE customerID = x;
DELETE FROM Customer WHERE customerID = x;
