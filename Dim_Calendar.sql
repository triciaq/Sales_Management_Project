SELECT 
      [DateKey],
      [FullDateAlternateKey] AS Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] AS Month,
      LEFT([EnglishMonthName],3) AS Month_shrt,
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] AS MonthNo,
      [CalendarQuarter] AS Qtr,
      [CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
FROM [AdventureWorksDW2022].[dbo].[DimDate]
WHERE CalendarYear >= 2012

--SELECT MIN(CalendarYear)
--FROM [AdventureWorksDW2022].[dbo].[DimDate]
