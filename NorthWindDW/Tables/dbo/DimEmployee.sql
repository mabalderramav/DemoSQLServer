CREATE TABLE [dbo].[DimEmployee](
    [EmployeeSK] [int] IDENTITY(1,1) NOT NULL,
    [EmployeeID] [int] NOT NULL,
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
    [ReportsTo] [int] NULL,
    PRIMARY KEY CLUSTERED
        (
        [EmployeeSK] ASC
            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]