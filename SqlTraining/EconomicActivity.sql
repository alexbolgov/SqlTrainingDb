CREATE TABLE [dbo].[EconomicActivity]
(
	EconomicActivityId smallint NOT NULL constraint PK_EconomicActivity PRIMARY KEY,
	DescriptionRus varchar(100) not null,
	DescriptionEng varchar(100) not null
)
