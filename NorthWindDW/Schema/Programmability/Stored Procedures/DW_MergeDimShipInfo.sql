CREATE PROCEDURE [dbo].[DW_MergeDimShipInfo]
AS
BEGIN
    UPDATE dc
    SET [Address]        = ss.[Address],
        [City]           = ss.[City],
        [Region]        = ss.[Region],
        [Country]       = ss.[Country]
    FROM [dbo].[DimShipInfo]        ds
    INNER JOIN [staging].[ShipInfo] ss ON (ds.[ShipInfoSK]=ss.[ShipInfoSK])
END
GO
