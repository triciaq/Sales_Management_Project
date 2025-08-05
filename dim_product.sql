SELECT  
    p.[ProductKey],
    --p.[ProductAlternateKey],
    --p.[ProductSubcategoryKey],
    --p.[WeightUnitMeasureCode],
    --p.[SizeUnitMeasureCode],
    p.[EnglishProductName] AS Product_Name,
    --p.[SpanishProductName],
    --p.[FrenchProductName],
    --p.[StandardCost],
    --p.[FinishedGoodsFlag],
    p.[Color],
    --p.[SafetyStockLevel],
    --p.[ReorderPoint],    
    ISNULL(p.[Status], 'Outdated') AS [Product Status],
    p.[StartDate],
    p.[EndDate],
    sub.[EnglishProductSubcategoryName] AS Subcategory_Name,
    cat.[EnglishProductCategoryName] AS Category_Name
FROM 
    [AdventureWorksDW2022].[dbo].[DimProduct] AS p
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS sub
    ON p.[ProductSubcategoryKey] = sub.[ProductSubcategoryKey]
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductCategory] AS cat
    ON sub.[ProductCategoryKey] = cat.[ProductCategoryKey];
