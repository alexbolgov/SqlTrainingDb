CREATE SECURITY POLICY [security].SourceSystemRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](SourceSystemID, 0, 0, 0, 0, 0) ON dbo.SourceSystem
WITH (STATE = ON, SCHEMABINDING = OFF)