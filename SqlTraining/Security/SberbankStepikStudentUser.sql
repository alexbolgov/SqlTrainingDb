CREATE USER [SberbankStepikStudent]
	for LOGIN SberbankStepikStudent
	WITH DEFAULT_SCHEMA = dbo

GO

GRANT CONNECT TO [SberbankStepikStudent]
go
grant select on schema::dbo to [SberbankStepikStudent]
