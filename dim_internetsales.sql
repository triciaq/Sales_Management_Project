SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]      
      ,[SalesOrderNumber]      
      ,[SalesAmount]      
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey,4) >= 2012
  ORDER BY OrderDateKey ASC
    
