CREATE DATABASE E_Commerce

--Creating tables

--Customers table

CREATE TABLE Customer(
CustomerID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(100),
PhoneNumber VARCHAR(15),
Address VARCHAR(225),
City VARCHAR(50),
RegistrationDate DATE DEFAULT GETDATE()
);

--Products table

CREATE TABLE Products(
ProductID INT PRIMARY KEY IDENTITY(1,1),
ProductName VARCHAR(100) NOT NULL,
Category VARCHAR(50) NOT NULL,
Price DECIMAL(10,2) NOT NULL,
StockQuantity INT
);

--Orders table

CREATE TABLE Orders(
OrderID INT PRIMARY KEY IDENTITY(1,1),
CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
OrderDate DATETIME DEFAULT GETDATE(),
TotalAmount DECIMAL(10,2) NOT NULL
);

--Order details table

CREATE TABLE OrderDetails(
OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
Quantity INT NOT NULL,
UnitPrice DECIMAL(10,2) NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL
);

--Inserting values into the tables

--Inserting into customers table

INSERT INTO Customer(FirstName, LastName, Email, PhoneNumber, Address, City, RegistrationDate) VALUES
('Amina', 'Abubakar', 'amina.abubakar@gmail.com', '08031234567', '23 Adeola Avenue', 'Lagos', GETDATE()),
('Chinedu', 'Okafor', 'chinedu.okafor@gmail.com', '08061234568', '14 Unity Road', 'Abuja', GETDATE()),
('Fatima', 'Yusuf', 'fatima.yusuf@gmail.com', '08171234569', '12 Iwo Road', 'Ibadan', GETDATE());

--Inserting into products table

INSERT INTO Products(ProductName, Category, Price, StockQuantity)VALUES
('Mobile Phone', 'Electronics', 50000.00, 25),
('Bluetooth Speaker', 'Electronics', 8000.00, 100),
('Leather Wallet', 'Accessories', 2000.00, 50);

--Inserting into orders table

INSERT INTO Orders(CustomerID, OrderDate, TotalAmount)VALUES
(1, '2023-11-01 10:30:00', 52000.00),
(2, '2023-11-02 15:45:00', 12000.00),
(3, '2023-11-03 09:15:00', 2000.00);

--Inserting into order details table

INSERT INTO OrderDetails(OrderID, ProductID, Quantity, UnitPrice, TotalPrice)VALUES
(1, 1, 1, 50000.00, 50000.00),
(2, 2, 1, 8000.00, 8000.00),
(3, 3, 1, 2000.00, 2000.00);

--Checking values
SELECT*FROM Customer
SELECT*FROM Products
SELECT*FROM Orders
SELECT*FROM OrderDetails