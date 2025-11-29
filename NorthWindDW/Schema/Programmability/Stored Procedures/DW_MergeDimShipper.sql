CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN
    UPDATE dc
    SET [CompanyName] = ss.[CompanyName]
    FROM [dbo].[DimShipper]        ds
    INNER JOIN [staging].[Shipper] ss ON (ds.[ShipperSK]=ss.[ShipperSK])
END
GO
