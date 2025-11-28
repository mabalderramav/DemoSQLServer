/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
:r .\Clean.data.sql
:r .\Region.data.sql
:r .\Territories.data.sql
:r .\Employees.data.sql
:r .\EmployeeTerritories.data.sql
:r .\Categories.data.sql
:r .\Suppliers.data.sql
:r .\Products.data.sql
:r .\Customers.data.sql
:r .\Shippers.data.sql
:r .\Orders.data.sql
:r .\OrderDetails.data.sql