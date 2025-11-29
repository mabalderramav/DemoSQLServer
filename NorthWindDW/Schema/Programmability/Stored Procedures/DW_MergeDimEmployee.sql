CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN

    UPDATE dc
    SET [FirstName] = se.[FirstName],
        [LastName] = se.[LastName],
        [Title] = se.[Title],
        [TitleOfCourtesy] = se.[TitleOfCourtesy],
        [BirthDate] = se.[BirthDate],
        [HireDate] = se.[HireDate],
        [Address] = se.[Address],
        [City] = se.[City],
        [Region] = se.[Region],
        [Country] = se.[Country],
        [PostalCode] = se.[PostalCode],
        [ReportsTo] = se.[ReportsTo]
    FROM [dbo].[DimEmployee]        de
    INNER JOIN [staging].[Employee] se ON (de.[EmployeeSK]=se.[EmployeeSK])
END
GO
