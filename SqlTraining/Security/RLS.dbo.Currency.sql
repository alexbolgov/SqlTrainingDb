CREATE SECURITY POLICY [security].CurrencyRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](CurrencyID, 0, 0, 0, 0, 0) ON dbo.Currency
WITH (STATE = ON, SCHEMABINDING = OFF)