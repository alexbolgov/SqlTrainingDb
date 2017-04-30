CREATE TABLE [dbo].[Currency]
(
	[CurrencyID] SMALLINT NOT NULL constraint PK_Currency PRIMARY KEY, 
    [CurrencyIsoAlphaCode] CHAR(3) NOT NULL constraint UK_Currency_IsoCurrencyCode unique, 
	CurrencyIsoNumericCode char(2) not null constraint UK_Currency_IsoNumericCode unique,
    [DescriptionRus] VARCHAR(100) NOT NULL, 
    [DescriptionEng] VARCHAR(100) NOT NULL
)
