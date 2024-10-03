-- Step 1: Create the Database
CREATE DATABASE CarRentalSystem;
USE CarRentalSystem;

-- Step 2: Create the Vehicle Table
CREATE TABLE Vehicle (
    vehicleID INT PRIMARY KEY AUTO_INCREMENT,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    dailyRate DECIMAL(10, 2),
    status ENUM('available', 'notAvailable'),
    passengerCapacity INT,
    engineCapacity INT
);

-- Step 3: Create the Customer Table
CREATE TABLE Customer (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    phoneNumber VARCHAR(15)
);

-- Step 4: Create the Lease Table
CREATE TABLE Lease (
    leaseID INT PRIMARY KEY AUTO_INCREMENT,
    vehicleID INT,
    customerID INT,
    startDate DATE,
    endDate DATE,
    leaseType ENUM('Daily', 'Monthly'),
    FOREIGN KEY (vehicleID) REFERENCES Vehicle(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

-- Step 5: Create the Payment Table
CREATE TABLE Payment (
    paymentID INT PRIMARY KEY AUTO_INCREMENT,
    leaseID INT,
    paymentDate DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (leaseID) REFERENCES Lease(leaseID)
);

-- Step 6: Insert Data into Vehicle Table
INSERT INTO Vehicle (make, model, year, dailyRate, status, passengerCapacity, engineCapacity)
VALUES
('Toyota', 'Camry', 2022, 50.00, 'available', 4, 1450),
('Honda', 'Civic', 2023, 45.00, 'available', 7, 1500),
('Ford', 'Focus', 2022, 48.00, 'notAvailable', 4, 1400),
('Nissan', 'Altima', 2023, 52.00, 'available', 7, 1200),
('Chevrolet', 'Malibu', 2022, 47.00, 'available', 4, 1800),
('Hyundai', 'Sonata', 2023, 49.00, 'notAvailable', 7, 1400),
('BMW', '3 Series', 2023, 60.00, 'available', 7, 2499),
('Mercedes', 'C-Class', 2022, 58.00, 'available', 8, 2599),
('Audi', 'A4', 2022, 55.00, 'notAvailable', 4, 2500),
('Lexus', 'ES', 2023, 54.00, 'available', 4, 2500);

-- Step 7: Insert Data into Customer Table
INSERT INTO Customer (firstName, lastName, email, phoneNumber)
VALUES
('John', 'Doe', 'johndoe@example.com', '555-555-5555'),
('Jane', 'Smith', 'janesmith@example.com', '555-123-4567'),
('Robert', 'Johnson', 'robert@example.com', '555-789-1234'),
('Sarah', 'Brown', 'sarah@example.com', '555-456-7890'),
('David', 'Lee', 'david@example.com', '555-987-6543'),
('Laura', 'Hall', 'laura@example.com', '555-234-5678'),
('Michael', 'Davis', 'michael@example.com', '555-876-5432'),
('Emma', 'Wilson', 'emma@example.com', '555-432-1098'),
('William', 'Taylor', 'william@example.com', '555-321-6547'),
('Olivia', 'Adams', 'olivia@example.com', '555-765-4321');

-- Step 8: Insert Data into Lease Table
INSERT INTO Lease (vehicleID, customerID, startDate, endDate, leaseType)
VALUES
(1, 1, '2023-01-01', '2023-01-05', 'Daily'),
(2, 2, '2023-02-15', '2023-02-28', 'Monthly'),
(3, 3, '2023-03-10', '2023-03-15', 'Daily'),
(4, 4, '2023-04-20', '2023-04-30', 'Monthly'),
(5, 5, '2023-05-05', '2023-05-10', 'Daily'),
(4, 3, '2023-06-15', '2023-06-30', 'Monthly'),
(7, 7, '2023-07-01', '2023-07-10', 'Daily'),
(8, 8, '2023-08-12', '2023-08-15', 'Monthly'),
(3, 3, '2023-09-07', '2023-09-10', 'Daily'),
(10, 10, '2023-10-10', '2023-10-31', 'Monthly');

-- Step 9: Insert Data into Payment Table
INSERT INTO Payment (leaseID, paymentDate, amount)
VALUES
(1, '2023-01-03', 200.00),
(2, '2023-02-20', 1000.00),
(3, '2023-03-12', 75.00),
(4, '2023-04-25', 900.00),
(5, '2023-05-07', 60.00),
(6, '2023-06-18', 1200.00),
(7, '2023-07-03', 40.00),
(8, '2023-08-14', 1100.00),
(9, '2023-09-09', 80.00),
(10, '2023-10-25', 1500.00);
