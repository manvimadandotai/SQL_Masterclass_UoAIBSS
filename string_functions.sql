--Concats two or more strings
SELECT CONCAT(BusinessEntityID,JobTitle)
FROM HumanResources.Employee

--Concats with separator
SELECT CONCAT_WS('|',BusinessEntityID,JobTitle)
FROM HumanResources.Employee

--Left 
SELECT LEFT(AddressLine1,10) as address10
FROM Person.Address

--Substring
SELECT SUBSTRING(AddressLine1,1,10) as address10
FROM Person.Address

SELECT SUBSTRING(AddressLine1,10,16) as address10to15
FROM Person.Address

--lower 
SELECT lower(JobTitle)
FROM HumanResources.Employee

--upper 
SELECT upper(JobTitle)
FROM HumanResources.Employee

--len
SELECT TOP 1 len(JobTitle) as len, JobTitle
FROM HumanResources.Employee

--trim
SELECT TRIM('       String_With_spaces     ') 

--Ltrim
SELECT LTRIM('       String_With_spaces     ') 

--Rtrim
SELECT RTRIM('       String_With_spaces     ') 