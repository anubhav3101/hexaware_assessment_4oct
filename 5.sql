--problem ->Get active leases for a specific customer

-- Replace 'x' with the customerID.
SELECT * FROM Lease WHERE customerID = x AND endDate >= CURRENT_DATE;
