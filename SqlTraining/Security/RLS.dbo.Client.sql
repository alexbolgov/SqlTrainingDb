CREATE SECURITY POLICY security.ClientRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](ClientID, CountryID, EconomicActivityID, 0, 0, 0) ON dbo.Client
WITH (STATE = ON, SCHEMABINDING = OFF)