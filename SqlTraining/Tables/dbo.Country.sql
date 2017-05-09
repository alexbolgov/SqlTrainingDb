CREATE TABLE [dbo].[Country]
(
	[CountryID] int identity(1,1) NOT NULL constraint PK_Country primary key, 
    [CountryIsoAlpha2Code] CHAR(2) NOT NULL constraint UK_Country_Alpha2 unique, 
    [CountryIsoAlpha3Code] CHAR(3) NOT NULL constraint UK_Country_Alpha3 unique,
	NameRus varchar(100) not null,
	NameEng varchar(100) not null
)
