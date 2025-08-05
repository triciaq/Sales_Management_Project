SELECT 
    c.[CustomerKey],
    c.[GeographyKey],
    --c.[CustomerAlternateKey],
    --c.[Title],
    c.[FirstName] + ' ' + c.[LastName] AS [Full_Name],
    --c.[MiddleName],
    --c.[NameStyle],
    --c.[BirthDate],
    --c.[MaritalStatus],
    --c.[Suffix],
    CASE c.Gender 
        WHEN 'M' THEN 'Male' 
        WHEN 'F' THEN 'Female' 
    END AS Gender,
    --c.[EmailAddress],
    --c.[YearlyIncome],
    --c.[TotalChildren],
    c.[DateFirstPurchase],
    c.[CommuteDistance],
    g.[City]
FROM 
    [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN                                           --joined geography table with customers
    [AdventureWorksDW2022].[dbo].[DimGeography] AS g
    ON c.GeographyKey = g.GeographyKey
ORDER BY Customerkey ASC