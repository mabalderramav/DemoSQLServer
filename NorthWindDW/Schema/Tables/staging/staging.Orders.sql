CREATE TABLE [staging].[Orders]
(
    [OrderSK] [int] NOT NULL,
    [EmployeeSK] [int] NOT NULL,
    [ShipperSK] [int] NOT NULL,
    [CustomerSK] [int] NOT NULL,
    [SupplierSK] [int] NOT NULL,
    [ProductSK] [int] NOT NULL,
    [ShipInfoSK] [int] NOT NULL,
    [OrderDateSK] [int] NOT NULL,
    [RequiredDateSK] [int] NOT NULL,
    [ShippedDateSK] [int] NOT NULL,
    [Freight] [money] NOT NULL,
    [UnitPrice] [money] NOT NULL,
    [Quantity] [smallint] NOT NULL,
    [Discount] [real] NOT NULL,
    [ActualCost] [money] NOT NULL,
)
