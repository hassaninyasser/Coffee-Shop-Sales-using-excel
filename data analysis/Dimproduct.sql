SELECT TOP (1000) p.[ProductKey] as productkay
      ,p.[ProductAlternateKey] as productcode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as productname
      --,[SpanishProductName]
      --,[FrenchProductName]
       ,p.[StandardCost] as productstandercost
      --,[FinishedGoodsFlag]
      ,p.[Color] as productcolor
      --,[SafetyStockLevel]
      ,p.[ReorderPoint] as reorderpoint
      --,[ListPrice]
      ,p.[Size] as productsize,
	  o.[OrganizationName] as organizationname
      --,[SizeRange]
     -- ,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as productline
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as modelname
      --,[LargePhoto]
      ,p.[EnglishDescription] description
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      ,p.[StartDate] as startdate
      ,p.[EndDate] as enddate
      ,p.[Status] as productstatus,
	  ISnull(status,'outdated') as productstatus
  FROM [dbo].[DimProduct] as p
  left join [dbo].[DimOrganization] o 
  on o.[OrganizationKey]=p.[ProductKey]
  order by p.ProductKey asc
