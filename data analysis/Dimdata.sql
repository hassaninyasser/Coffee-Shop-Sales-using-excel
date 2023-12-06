SELECT TOP (1000) [DateKey]
      ,[FullDateAlternateKey] as Date
     -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as Day
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] as Weekno
      ,[EnglishMonthName] as Month ,
	  left([EnglishMonthName],3) as Monthshort
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] as Monthno
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
    --  ,[CalendarSemester]
    --  ,[FiscalQuarter]
     -- ,[FiscalYear]
     -- ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  order by CalendarYear