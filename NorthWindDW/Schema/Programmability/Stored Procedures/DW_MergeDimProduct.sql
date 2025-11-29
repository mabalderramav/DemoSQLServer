CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN
    UPDATE dc
    SET [ProductName]      = sp.[ProductName],
        [QuantityPerUnit]  = sp.[QuantityPerUnit],
        [UnitPrice]        = sp.[UnitPrice],
        [UnitsInStock]     = sp.[UnitsInStock],
        [UnitsOnOrder]     = sp.[UnitsOnOrder],
        [ReorderLevel]     = sp.[ReorderLevel],
        [Discontinued]     = sp.[Discontinued],
        [CategoryName]     = sp.[CategoryName] 
    FROM [dbo].[DimProduct]        dp
    INNER JOIN [staging].[Product] sp ON (dp.[ProductSK]=sp.[ProductSK])
END
GO
