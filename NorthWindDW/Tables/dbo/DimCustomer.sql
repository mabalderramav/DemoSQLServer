CREATE TABLE [dbo].[DimCustomer](
    [CustomerSK] [int] IDENTITY(1,1) NOT NULL,
    [CustomerID] [char](10) NOT NULL,
    [CompanyName] [varchar](40) NOT NULL,
    [ContactName] [varchar](30) NULL,
    [ContactTitle] [varchar](50) NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [Country] [nvarchar](15) NULL,
    PRIMARY KEY CLUSTERED
        (
        [CustomerSK] ASC
            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
