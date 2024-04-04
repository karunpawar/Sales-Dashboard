--Cleaned DimDate Table Query

SELECT 
  [DateKey], 
  [FullDateAlternateKey] Date,
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] Day,
  --[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS [Week Number], 
  [EnglishMonthName],
  LEFT([EnglishMonthName],3) Month,
  --[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS [Month Number], 
  [CalendarQuarter] Quarter, 
  [CalendarYear] Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
WHERE
	CalendarYear >= 2023

--Since the requirement of the current project demand data that is spread over last two years
--We are just checking for how many years do we have the data to analyse.
/*
SELECT 
  distinct CalendarYear 
FROM 
  DimDate 
ORDER BY 
  CalendarYear;
  */