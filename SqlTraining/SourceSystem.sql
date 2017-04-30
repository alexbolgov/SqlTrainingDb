CREATE TABLE [dbo].[SourceSystem]
(
	SourceSystemID smallint NOT NULL constraint PK_SourceSystem PRIMARY KEY,
	SourceSystemName varchar(100) not null constraint UK_SourceSystem unique
)
