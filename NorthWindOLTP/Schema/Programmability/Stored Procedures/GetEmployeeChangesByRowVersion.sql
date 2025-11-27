CREATE PROCEDURE [dbo].[GetEmployeeChangesByRowVersion]
    (
        @startRow BIGINT,
        @endRow  BIGINT
    )
    AS
    BEGIN
        SELECT empl.[EmployeeID]
             ,empl.[FirstName]
             ,empl.[LastName]
             ,empl.[Title]
             ,empl.[TitleOfCourtesy]
             ,empl.[BirthDate]
             ,empl.[HireDate]
             ,empl.[Address]
             ,empl.[City]
             ,empl.[Region]
             ,empl.[Country]
             ,empl.[PostalCode]
             ,empl.[ReportsTo]
        FROM [dbo].[Employees] empl
        WHERE empl.[Rowversion] > CONVERT(ROWVERSION,@startRow)
            AND empl.[Rowversion] <= CONVERT(ROWVERSION,@endRow)
    END
GO
