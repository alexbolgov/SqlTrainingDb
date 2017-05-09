CREATE TABLE [dbo].[EconomicActivity]
(
	EconomicActivityID int identity(1,1) NOT NULL constraint PK_EconomicActivity PRIMARY KEY,
	EconomicActivityCode varchar(10) not null constraint UK_EconomicActivity unique,
	DescriptionRus varchar(1000) not null,
	DescriptionEng varchar(1000) not null
)
