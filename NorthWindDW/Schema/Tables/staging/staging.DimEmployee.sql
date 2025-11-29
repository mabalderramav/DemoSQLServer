CREATE TABLE [staging].[DimEmployee]
(
    [EmployeeSK] [int] NOT NULL,
    [FirstName] [nvarchar](30) NOT NULL,
    [LastName] [nvarchar](30) NOT NULL,
    [Title] [nvarchar](30) NULL,
    [TitleOfCourtesy] [nvarchar](25) NULL,
    [BirthDate] [date] NULL,
    [HireDate] [date] NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [Country] [nvarchar](15) NULL,
    [PostalCode] [nvarchar](10) NULL,
    [ReportsTo] [int] NULL
)
