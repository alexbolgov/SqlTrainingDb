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

:r .\Tables\dbo.Country-Data.sql
:r .\Tables\dbo.Currency-Data.sql
:r .\Tables\dbo.CurrencyRate-Data.sql
:r .\Tables\dbo.EconomicActivity-Data.sql
:r .\Tables\dbo.OrgUnit-Data.sql
:r .\Tables\dbo.Product-Data.sql
:r .\Tables\dbo.SourceSystem-Data.sql
:r .\Tables\dbo.Client-Data.sql
:r .\Tables\dbo.Dates-Data.sql
:r .\Tables\dbo.Deal-Data.sql 

