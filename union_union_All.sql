--Union
SELECT TOP 10 FirstName FROM Person.Person
UNION 
SELECT TOP 5 Name FROM Purchasing.Vendor

--Union All
SELECT TOP 10 FirstName FROM Person.Person
UNION 
SELECT TOP 5 Name FROM Purchasing.Vendor