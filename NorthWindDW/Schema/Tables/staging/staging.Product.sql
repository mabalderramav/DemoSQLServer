CREATE TABLE [staging].[Product]
(
    [ProductSK] [int] NOT NULL,
    [ProductName] [nvarchar](40) NOT NULL,
    [QuantityPerUnit] [nvarchar](20) NULL,
    [UnitPrice] [money] NULL,
    [UnitsInStock] [smallint] NULL,
    [UnitsOnOrder] [smallint] NULL,
    [ReorderLevel] [smallint] NULL,
    [Discontinued] [bit] NULL,
    [CategoryName] [nvarchar](15) NOT NULL,
)
