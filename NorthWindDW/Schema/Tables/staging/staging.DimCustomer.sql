CREATE TABLE [staging].[DimCustomer]
(
    [CustomerSK] [int] NOT NULL,
    [CompanyName] [varchar](40) NOT NULL,
    [ContactName] [varchar](30) NULL,
    [ContactTitle] [varchar](50) NULL,
    [Address] [nvarchar](60) NULL,
    [City] [nvarchar](15) NULL,
    [Region] [nvarchar](15) NULL,
    [Country] [nvarchar](15) NULL,
)
