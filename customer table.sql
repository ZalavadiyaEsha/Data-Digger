show databases;

CREATE DATABASE CustomerDB;

USE CustomerDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Address VARCHAR(100)
);

INSERT INTO Customers (CustomerID, Name, Email, Address) VALUES
(1, 'Esha', 'esha@gmail.com', 'Rajkot'),
(2, 'Neha', 'neha@gmail.com', 'Ahmedabad'),
(3, 'Manu', 'manu@gmail.com', 'Surat'),
(4, 'Pooja', 'pooja@gmail.com', 'Vadodara'),
(5, 'Esha', 'esha2@gmail.com', 'Gondal');

SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Mumbai'
WHERE CustomerID = 1;

DELETE FROM Customers
WHERE CustomerID = 5;

SELECT * FROM Customers
WHERE Name = 'Esha';