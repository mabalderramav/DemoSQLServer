CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN

    UPDATE fo
    SET [EmployeeSK] = so.[EmployeeSK],
        [ShipperSK] = so.[ShipperSK],
        [CustomerSK] = so.[CustomerSK],
        [ProductSK] = so.[ProductSK],
        [ShipInfoSK] = so.[ShipInfoSK],
        [OrderDateSK] = so.[OrderDateSK],
        [RequiredDateSK] = so.[RequiredDateSK],
        [ShippedDateSK] = so.[ShippedDateSK],
        [Freight] = so.[Freight],
        [UnitPrice] = so.[UnitPrice],
        [Quantity] = so.[Quantity],
        [Discount] = so.[Discount]
    FROM [dbo].[FactOrders] fo
    INNER JOIN [staging].[orders] so ON fo.[OrderSK] = so.[OrderSK]
END
GO
