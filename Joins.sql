SELECT TOP 10 * FROM HumanResources.Employee 

SELECT TOP 10 * FROM Person.[Person]

--INNER JOIN
--Get employee data from person table for employees in employee table
SELECT e.*
FROM HumanResources.Employee as e 
INNER JOIN Person.Person as p 
    on e.BusinessEntityID = p.BusinessEntityID

--LEFT OUTER JOIN
--Only products that have not been ordered 
SELECT s.SalesOrderID
       , p.ProductID
       , p.Name 
FROM Production.Product as p 
LEFT OUTER JOIN Sales.SalesOrderDetail as s 
    ON p.ProductID = s.ProductID
WHERE SalesOrderID IS NULL 

----An example with with as ----derived tables----
With orders_2014 as 
(
    SELECT *
    FROM Sales.SalesOrderHeader
    WHERE  OrderDate BETWEEN '1/1/2014' AND '12/31/2014'

)
SELECT C.CustomerID
       , SalesOrderID
       , OrderDate
FROM Sales.Customer as C 
LEFT OUTER JOIN orders_2014 as o 
    ON C.CustomerID = o.CustomerID

--Multicolumn Joins
SELECT Product.ProductID
 , Product.Name
 , Product.StandardCost
 , Product.ListPrice
 , SalesOrderDetail.UnitPrice
FROM Production.Product
 INNER JOIN Sales.SalesOrderDetail
 ON Product.ProductID = SalesOrderDetail.ProductID
 AND Product.ListPrice = SalesOrderDetail.UnitPrice