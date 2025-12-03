CREATE PROCEDURE [dbo].[DW_MergeDimSupplier]
AS
BEGIN
    UPDATE ds
    SET [CompanyName] = ss.[CompanyName],
        [ContactTitle] = ss.[ContactTitle],
        [Address] = ss.[Address],
        [City] = ss.[City],
        [Region] = ss.[Region],
        [Country] = ss.[Country],
        [PostalCode] = ss.[PostalCode]
    FROM [dbo].[DimSupplier]        ds
    INNER JOIN [staging].[Supplier] ss ON (ds.[SupplierSK]=ss.[SupplierSK])
END
GO
