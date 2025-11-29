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
    [Freight] [real] NOT NULL,
    [UnitPrice] [real] NOT NULL,
    [Quantity] [int] NOT NULL,
    [Discount] [real] NOT NULL,
    [ActualCost] [real] NOT NULL,
)
