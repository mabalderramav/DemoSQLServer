CREATE PROCEDURE [dbo].[GetSupplierChangesByRowVersion]
    (
        @startRow BIGINT,
        @endRow  BIGINT
    )
    AS
    BEGIN
        SELECT sup.[SupplierID]
             ,sup.[CompanyName]
             ,sup.[ContactTitle]
             ,sup.[Address]
             ,sup.[City]
             ,sup.[Region]
             ,sup.[Country]
             ,sup.[PostalCode]
        FROM [dbo].[Suppliers] sup
        WHERE sup.[Rowversion] > CONVERT(ROWVERSION,@startRow)
          AND sup.[Rowversion] <= CONVERT(ROWVERSION,@endRow)
    END
GO
