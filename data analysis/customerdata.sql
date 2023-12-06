SELECT TOP (1000) c.[CustomerKey] as customrtkey
     -- ,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as firstname
      --,[MiddleName]
      ,c.[LastName] as lastname,
	  [FirstName] +' '+[LastName] as [Fullname]
      --,[NameStyle]
      ,c.[BirthDate] birthdate
      ,case c.[MaritalStatus] when 'M' then 'Married' when 'S' then 'Single' end as [MaritalStatus]
      --,[Suffix]
      ,case c.[Gender] when 'M' then 'Male' when 'F' then 'Female' end [Gender]
      ,c.[EmailAddress]
      ,c.[YearlyIncome]
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
      ,c.[AddressLine1] as addressline
      --,[AddressLine2]
      ,c.[Phone] as phone
      ,c.[DateFirstPurchase] as datafirstpurchase
      --,[CommuteDistance]
	 ,g.[City] as city
  FROM [dbo].[DimCustomer] as c inner join [dbo].[DimGeography] as g
  on c.[GeographyKey] = g. [GeographyKey]
  order by CustomerKey
