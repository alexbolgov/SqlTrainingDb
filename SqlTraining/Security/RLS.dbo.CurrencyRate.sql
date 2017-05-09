CREATE SECURITY POLICY [security].CurrencyRateRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](CurrencyID, 0, 0, 0, 0, 0) ON dbo.CurrencyRate
WITH (STATE = ON, SCHEMABINDING = OFF)