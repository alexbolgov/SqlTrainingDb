CREATE SECURITY POLICY [security].DealRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](SourceSystemID, OrgUnitID, ProductID, CurrencyID, ClientID, 0) ON dbo.Deal
WITH (STATE = ON, SCHEMABINDING = OFF)