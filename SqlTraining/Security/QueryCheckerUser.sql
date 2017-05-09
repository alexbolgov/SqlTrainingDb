CREATE USER [QueryChecker]
	for LOGIN QueryChecker
	WITH DEFAULT_SCHEMA = dbo

GO

GRANT CONNECT TO QueryChecker
go
grant select on schema::dbo to QueryChecker
