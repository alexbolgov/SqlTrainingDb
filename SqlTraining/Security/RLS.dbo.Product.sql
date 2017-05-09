CREATE SECURITY POLICY [security].ProductRls
ADD FILTER PREDICATE [security].[RowLevelSecurityFunc](ProductID, 0, 0, 0, 0, 0) ON dbo.Product
WITH (STATE = ON, SCHEMABINDING = OFF)