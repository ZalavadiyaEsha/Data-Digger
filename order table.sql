show databases;

CREATE DATABASE OrderDB;

USE OrderDB;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(1, 201, '2026-11-01', 2500.00),
(2, 202, '2026-11-05', 1800.00),
(3, 201, '2026-11-10', 4500.00),
(4, 203, '2026-11-15', 3200.00),
(5, 202, '2026-11-18', 1200.00);

SELECT * FROM Orders
WHERE CustomerID = 201;

UPDATE Orders
SET TotalAmount = 5000.00
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 5;

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT 
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;