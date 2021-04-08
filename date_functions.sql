--datediff
SELECT SalesOrderID
      , OrderDate
      , ShipDate
      , DATEDIFF(d,OrderDate,ShipDate) as no_of_days
FROM Sales.SalesOrderHeader

--dateadd
SELECT SalesOrderID
       , OrderDate
       ,DATEADD(m,6,OrderDate) date_plus_6m
from Sales.SalesOrderHeader


--GETDATE
SELECT cast(GETDATE() as date) as today

--DATEPART

--find order month
SELECT SalesOrderID
       , OrderDate
       , DATEPART(yyyy, OrderDate) as order_year
       , DATEPART(m,OrderDate) as order_month
FROM Sales.SalesOrderHeader


