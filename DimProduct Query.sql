--Cleaned DimProduct Table

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] [Product Item Code] --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] [Product Name], 
  ps.EnglishProductSubcategoryName [Sub Category] --adding subcategory from subcategory table
  , 
  pc.EnglishProductCategoryName [Product Category] ----adding category from category table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  p.[Color] [Product Color] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  p.[Size] [Product Size] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  p.[ProductLine] [Product Line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  p.[ModelName] [Product Model Name] --,[LargePhoto]
  , 
  p.[EnglishDescription] [Product Description] --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL(p.Status, 'Outdated') [Product Status] 
FROM 
  DimProduct p 
  LEFT JOIN DimProductSubcategory ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC;
