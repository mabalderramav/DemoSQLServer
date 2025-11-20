CREATE TABLE [dbo].[DimSupplier](
    [SupplierSK] [int] IDENTITY(1,1) NOT NULL,
    [SupplierID] [int] NOT NULL,
    [CompanyName] [nvarchar](40) NOT NULL,
    [ContactTitle] [nvarchar](30) NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [Country] [nvarchar](15) NULL,
    [PostalCode] [nvarchar](10) NULL,
    PRIMARY KEY CLUSTERED
        (
        [SupplierSK] ASC
            )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]