CREATE TABLE [dbo].[SourceSystem]
(
	SourceSystemID int identity(1,1) NOT NULL constraint PK_SourceSystem PRIMARY KEY,
	SourceSystemName varchar(100) not null constraint UK_SourceSystem unique
)
