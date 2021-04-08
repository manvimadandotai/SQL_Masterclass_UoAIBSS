--convert
SELECT CONVERT(varchar(20), GETDATE())
SELECT CONVERT(varchar(20), GETDATE(), 101)

--cast
SELECT CAST(GETDATE() AS date)

--COALESCE
--Returns the first non - null value from a comma - delimited list of expressions.
SELECT COALESCE(Title + ' ','') + FirstName +
        COALESCE(' ' + MiddleName,'') + ' ' + LastName +
        COALESCE(', ' + Suffix,'')
FROM Person.Person;

--ISNULL
SELECT ProductID, Name, Color FROM Production.Product
WHERE ISNULL(Color,'') <> 'Blue';

