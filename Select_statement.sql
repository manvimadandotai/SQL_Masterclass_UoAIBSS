SELECT * FROM HumanResources.Department 


-- Using Keyword Top to select limited rows in a view
SELECT TOP 10 * 
FROM HumanResources.vEmployeeDepartmentHistory


-- Selecting particular columns from a table
SELECT ProductID
       ,ProductReviewID
       ,ReviewDate
       ,ReviewerName
       ,Comments
       ,* 
FROM Production.ProductReview

-- Using Select Distinct, subquery and table alias
SELECT count(*) FROM  
       (SELECT distinct Name as Country_name
       FROM Sales.SalesTerritory ) a 

-- Using where clause to filter
SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'Engineering Manager'

-- Using WHERE, AND and ORDER BY
-- Finding out latest Currency Rate for conversion from USD TO CAD
SELECT * FROM Sales.CurrencyRate
WHERE ( FromCurrencyCode = 'USD' AND ToCurrencyCode = 'CAD'  )
ORDER BY ModifiedDate Desc

--Update
-- Making sure we have unique identifier before updating the record
SELECT  top 10 * FROM Purchasing.Vendor
where BusinessEntityID = 1492

-- Updating the Name  from 'Australia Bike Retailer' to 'Australia Bike Retainer__'
UPDATE Purchasing.Vendor 
SET Name =  'Australia Bike Retainer__'
where BusinessEntityID = 1492

--Checking if Record has been updated
SELECT  top 10 * FROM Purchasing.Vendor
where BusinessEntityID = 1492

--Delete

--Syntax for delete is commented to make sure if do not delete anything we dont have backed up
--DELETE FROM Purchasing.Vendor
--where BusinessEntityID = 1492

--NULL Values and Count

--Counting the number of records where PersonID is null
SELECT  count(*) FROM Sales.Customer
where PersonID is null 

--Counting the number of records where PersonID is null
SELECT  count(*) FROM Sales.Customer
where PersonID is not null 

--Since BusinessEntityID seems to be Unique Identifier it should never be NULL
SELECT * FROM Purchasing.Vendor
where BusinessEntityID IS NULL 

--LIKE, wildcards and lower/ upper

--Find out the address id for Princess street address(s)
SELECT AddressID
       , AddressLine1
       , AddressLine2
       , City
       , StateProvinceID
FROM Person.Address
where lower(AddressLine1) like '%princess%street%' 

--IN 

--Find Full names of the people with the following businessentityIDs: 91, 527, 225, 917

SELECT BusinessEntityID
       , Title
       , FirstName
       , MiddleName
       , LastName
FROM Person.Person
where BusinessEntityID IN (91, 527, 225, 917)



--BETWEEN

--Find all person records modified between '2014-06-01' AND '2014-06-03'
WITH modified_rec_between as 
(
SELECT BusinessEntityID
       , Title
       , FirstName
       , MiddleName
       , LastName
       , ModifiedDate
FROM Person.Person
WHERE cast(ModifiedDate AS date) BETWEEN '2014-06-01' AND '2014-06-03'
) 

SELECT COUNT(*) as count_A FROM modified_rec_between --52S


--Find all person records modified between '2014-06-01' AND '2014-06-03' using logical operators

WITH modified_rec_op as 
(
SELECT BusinessEntityID
       , Title
       , FirstName
       , MiddleName
       , LastName
       , ModifiedDate
FROM Person.Person
WHERE  ( cast(ModifiedDate AS date) >= '2014-06-01' 
         AND cast(ModifiedDate AS date) <= '2014-06-03' )

)

SELECT COUNT(*) as count_B FROM modified_rec_op --52
