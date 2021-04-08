--round
SELECT SalesOrderID
       , ROUND(SubTotal,0) as subtotal 
FROM Sales.SalesOrderHeader

SELECT SalesOrderID
       , ROUND(SubTotal,2) as subtotal 
FROM Sales.SalesOrderHeader

--sqrt
SELECT SQRT(SalesOrderID) AS OrderSQRT
FROM Sales.SalesOrderHeader

--RAND and Arithematic Operators
SELECT CAST(RAND() * 10 AS INT) + 1

--MAX 
SELECT max(SubTotal) as max_subtotal 
FROM Sales.SalesOrderHeader

--MIN 
SELECT min(SubTotal) as min_subtotal 
FROM Sales.SalesOrderHeader

--AVG 
SELECT avg(SubTotal) as avg_subtotal 
FROM Sales.SalesOrderHeader

--floor
SELECT floor(avg(SubTotal)) as avg_subtotal_floor 
FROM Sales.SalesOrderHeader

--ceiling
SELECT ceiling(avg(SubTotal)) as avg_subtotal_ceiling 
FROM Sales.SalesOrderHeader

--count
SELECT count(SalesOrderID) as sales_Count
FROM Sales.SalesOrderHeader