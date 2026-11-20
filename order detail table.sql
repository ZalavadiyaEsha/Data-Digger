show databases;

CREATE DATABASE OrderdetailDB;

USE OrderdetailDB;

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2)
);

INSERT INTO OrderDetails VALUES (1, 201, 1, 2, 500);
INSERT INTO OrderDetails VALUES (2, 201, 2, 1, 300);
INSERT INTO OrderDetails VALUES (3, 202, 1, 3, 750);
INSERT INTO OrderDetails VALUES (4, 203, 3, 2, 900);
INSERT INTO OrderDetails VALUES (5, 202, 2, 4, 1200);

SELECT * FROM OrderDetails
WHERE OrderID = 201;

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

SELECT COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 1;