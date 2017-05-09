CREATE SECURITY POLICY [security].CountryRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](CountryID, 0, 0, 0, 0, 0) ON dbo.Country
WITH (STATE = ON, SCHEMABINDING = OFF)