CREATE PROCEDURE [dbo].[GetProductChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow  BIGINT
)
AS
BEGIN
    SELECT prd.[ProductID]
         ,prd.[ProductName]
         ,prd.[QuantityPerUnit]
         ,prd.[UnitPrice]
         ,prd.[UnitsInStock]
         ,prd.[UnitsOnOrder]
         ,prd.[ReorderLevel]
         ,prd.[Discontinued]
         ,cat.[CategoryName]
    FROM [dbo].[Products] prd
    INNER JOIN [dbo].[Categories] cat ON prd.[CategoryID] = cat.[CategoryID]
    WHERE (prd.[Rowversion] > CONVERT(ROWVERSION,@startRow)
        AND prd.[Rowversion] <= CONVERT(ROWVERSION,@endRow))
    OR (cat.[Rowversion] > CONVERT(ROWVERSION,@startRow)
        AND cat.[Rowversion] <= CONVERT(ROWVERSION,@endRow))
END
GO
