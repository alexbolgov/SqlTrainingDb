CREATE TABLE [dbo].[Client]
(
	ClientID int NOT NULL,
	ValidFrom date not null,
	ValidTo date not null,
	constraint CK_Client_Validity check(ValidFrom <= ValidTo),
	INN varchar(20) null,
	LegalForm varchar(100) null,
	ShortName varchar(100) not null,
	FullName varchar(1000) not null,
	CountryID int not null constraint FK_Client_Country foreign key references dbo.Country(CountryID),
	EconomicActivityID int not null constraint FK_Client_EconomicActivity foreign key references dbo.EconomicActivity(EconomicActivityID)
)
