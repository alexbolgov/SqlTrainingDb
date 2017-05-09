CREATE SECURITY POLICY [security].EconomicActivityRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](EconomicActivityID, 0, 0, 0, 0, 0, 0) ON dbo.EconomicActivity
WITH (STATE = ON, SCHEMABINDING = OFF)