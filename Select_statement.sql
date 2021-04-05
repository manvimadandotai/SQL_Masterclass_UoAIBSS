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


