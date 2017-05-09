CREATE SECURITY POLICY [security].OrgUnitRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](OrgUnitID, 0, 0, 0, 0, 0) ON dbo.OrgUnit
WITH (STATE = ON, SCHEMABINDING = OFF)