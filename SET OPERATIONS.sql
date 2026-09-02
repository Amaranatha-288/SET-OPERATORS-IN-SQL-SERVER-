SELECT

 FirstName,
 LastName
 FROM Sales.Customers
 
 UNION

SELECT 
FirstName,
LastName
FROM Sales.Employees

--UNION
-- Combine the data from employees and customers into one table

SELECT
FirstName,
LastName
FROM Sales.Customers
UNION 
SELECT 
FirstName,
LastName
FROM Sales.Employees


-- UNION ALL
-- Cobine the data from employees and customers into one table, including duplicates

SELECT
FirstName,
LastName
FROM Sales.Customers
UNION ALL
SELECT 
FirstName,
LastName
FROM Sales.Employees

-- EXCEPT
-- Find the employes who are not customers at same time

SELECT
FirstName,
LastName
FROM Sales.Employees
EXCEPT
SELECT 
FirstName,
LastName
FROM Sales.Customers

-- INTERSECT

SELECT
FirstName,
LastName
FROM Sales.Employees
INTERSECT
SELECT 
FirstName,
LastName
FROM Sales.Customers
-- USE CASE
-- Orders data are stored in separte tables (Orders and Orders Archive).
-- Combine all Orders data into one report Without duplicates
 SELECT 
 'Orders' AS SourceTable
      ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
    SELECT 
    'OrderArchive' AS SourceTable
      ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.OrdersArchive
ORDER BY OrderID