CREATE PROCEDURE [dbo].[GetShipperChangesByRowVersion]
    (
        @startRow BIGINT,
        @endRow  BIGINT
    )
    AS
    BEGIN
        SELECT shi.[ShipperID]
             ,shi.[CompanyName]
        FROM [dbo].[Shippers] shi
        WHERE shi.[Rowversion] > CONVERT(ROWVERSION,@startRow)
          AND shi.[Rowversion] <= CONVERT(ROWVERSION,@endRow)
    END
GO
