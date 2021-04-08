--Comparsion Operators
SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > = 75.00

SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice ! > 5.00

SELECT NationalIDNumber, LoginID
FROM HumanResources.Employee
WHERE BirthDate > = ‘1962-1-1’
 AND BirthDate < = ‘1985-12-31’

--Logical Operators
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ProductSubCategoryID = 1 AND ListPrice < 1000

SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ProductSubCategoryID = 1 OR ListPrice < 1000

SELECT ProductID, Name, ListPrice
FROM production.Product
WHERE NOT ProductSubCategoryID = 2 



