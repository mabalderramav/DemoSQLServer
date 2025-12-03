CREATE PROCEDURE [dbo].[GetShipInfoChangesByRowVersion]
    (
        @startRow BIGINT,
        @endRow  BIGINT
    )
    AS
    BEGIN
        SELECT ord.[OrderID] 
             ,ord.[ShipAddress]
             ,ord.[ShipCity]
             ,ord.[ShipRegion]
             ,ord.[ShipCountry]
        FROM [dbo].[Orders] ord
        WHERE ord.[Rowversion] > CONVERT(ROWVERSION,@startRow)
          AND ord.[Rowversion] <= CONVERT(ROWVERSION,@endRow)
    END
GO
