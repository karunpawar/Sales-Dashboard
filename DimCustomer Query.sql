--USE AdventureWorksDW2022;
--Cleaned DimCustomer Table Query

/*
--Since there are so many null values in title column, I am just making sure that whether I can drop it or not.
SELECT
	DISTINCT Title
FROM
	DimCustomer;
*/


SELECT 
  c.CustomerKey [CustomerKey],
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName [First Name],
  --,[MiddleName]
  [LastName] [Last Name], 
  c.FirstName + ' ' + c.LastName [Full Name],
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase [DateFirstPurchase], --,[CommuteDistance]
  g.City [Customer City] 
FROM 
  DimCustomer c 
  LEFT JOIN DimGeography g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  c.CustomerKey ASC;