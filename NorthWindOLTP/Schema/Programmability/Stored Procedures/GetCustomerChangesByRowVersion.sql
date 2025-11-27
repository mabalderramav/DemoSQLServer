CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow  BIGINT
)
AS
BEGIN
    SELECT cust.[CustomerID]
         ,cust.[CompanyName]
         ,cust.[ContactName]
         ,cust.[ContactTitle]
         ,cust.[Address]
         ,cust.[City]
         ,cust.[Region]
         ,cust.[Country]
    FROM [dbo].[Customers] cust
    WHERE cust.[Rowversion] > CONVERT(ROWVERSION,@startRow)
      AND cust.[Rowversion] <= CONVERT(ROWVERSION,@endRow)
END
GO