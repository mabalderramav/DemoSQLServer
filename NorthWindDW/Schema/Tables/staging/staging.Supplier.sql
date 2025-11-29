CREATE TABLE [staging].[Supplier]
(
    [SupplierSK] [int] NOT NULL,
    [CompanyName] [nvarchar](40) NOT NULL,
    [ContactTitle] [nvarchar](30) NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [Country] [nvarchar](15) NULL,
    [PostalCode] [nvarchar](10) NULL,
)
