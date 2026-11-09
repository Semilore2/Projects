CREATE DATABASE Ecommerce

SELECT*FROM Customer
SELECT*FROM Products
SELECT*FROM Orders
SELECT*FROM OrderDetails

--Where clause task

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE TotalAmount > 1000
AND YEAR(OrderDate) = 2023;

--Group By task

SELECT Category, AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category;

--Order By task

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
ORDER BY OrderDate DESC;

--Having clause task

SELECT Category, AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 500;

--Arithmetic operations task

SELECT Top 10 ProductName, (Price * StockQuantity) AS TotalRevenue
FROM Products
ORDER BY TotalRevenue DESC;

--Wildcard task

--Customers whose LastName starts with 's'

SELECT CustomerID, FirstName, LastName, Email
FROM Customer
WHERE LastName LIKE 'S%';

--Customers whose Email contains 'gmail'

SELECT CustomerID, FirstName, LastName, Email
FROM Customer
WHERE Email LIKE '%gmail%';

--Products whose ProductName is exactly 10 characters long

SELECT ProductID, ProductName, Category, Price
FROM Products
WHERE ProductName LIKE '__________';

--Customers whose LastName starts with any letter from 'A' to 'C'

SELECT CustomerID, FirstName, LastName, Email
FROM Customer
WHERE LastName LIKE '[A-C]%';

--Prodcuts whose ProductName does not start with a vowel

SELECT ProductID, ProductName, Category, Price
FROM Products
WHERE ProductName LIKE '[^AEIOU]%';

--Customers whose LastName contains a digit

SELECT CustomerID, FirstName, LastName, Email
FROM Customer
WHERE LastName LIKE '%[0-9]%';

--Top clause task

--Retrieve the top 5 most expensive products

SELECT TOP 5 ProductID, ProductName, Category, Price
FROM Products
ORDER BY Price DESC;

--Retrieve the top 10 most recent orders

SELECT TOP 10 OrderID, CustomerID, OrderDate, TotalAmount
FROM Orders
ORDER BY OrderDate DESC;

--Retrieve the top 3 categories with the highest average product price

SELECT TOP 3 Category, AVG(Price) AS AveragePrice
FROM Products
GROUP BY Category
ORDER BY AveragePrice DESC;