CREATE TABLE [dbo].[OrgUnit]
(
	[OrgUnitID] INT identity(1,1) NOT NULL constraint PK_OrgUnit PRIMARY KEY,
	DivisionCode varchar(10) not null,
	DivisionName varchar(100) not null,
	BranchCode varchar(10) not null,
	BranchName varchar(100) not null,
	OfficeCode varchar(10) not null,
	OfficeName varchar(100) not null,
	constraint UK_OrgUnit_Hierarchy unique (DivisionCode, BranchCode,OfficeCode)
)
