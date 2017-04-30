CREATE TABLE [dbo].[OrgUnit]
(
	[OrgUnitID] INT NOT NULL constraint PK_OrgUnit PRIMARY KEY,
	RegionalBranchCode varchar(10) not null,
	RegionalBranchName varchar(100) not null,
	BranchCode varchar(10) not null,
	BranchName varchar(100) not null,
	OfficeCode varchar(10) not null,
	OfficeName varchar(100) not null
)
