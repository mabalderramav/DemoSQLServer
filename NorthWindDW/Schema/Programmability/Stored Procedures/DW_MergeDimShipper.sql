CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN
    UPDATE ds
    SET [CompanyName] = ss.[CompanyName]
    FROM [dbo].[DimShipper]        ds
    INNER JOIN [staging].[Shipper] ss ON (ds.[ShipperSK]=ss.[ShipperSK])
END
GO
