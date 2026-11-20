show databases;

CREATE DATABASE shopdb;

USE shopdb;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
(1, 'Laptop', 45000, 10),
(2, 'Mobile', 15000, 20),
(3, 'Keyboard', 800, 50),
(4, 'Mouse', 500, 30),
(5, 'Monitor', 12000, 15);

SELECT * FROM Products
ORDER BY Price DESC;

UPDATE Products
SET Price = 16000
WHERE ProductID = 2;

DELETE FROM Products
WHERE Stock = 0;

SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;

SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice
FROM Products;