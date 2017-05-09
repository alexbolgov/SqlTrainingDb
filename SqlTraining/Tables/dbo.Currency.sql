CREATE TABLE [dbo].[Currency]
(
	CurrencyID int identity(1,1) NOT NULL constraint PK_Currency PRIMARY KEY, 
    CurrencyIsoAlphaCode CHAR(3) NOT NULL constraint UK_Currency_IsoCurrencyCode unique, 
    DescriptionRus VARCHAR(100) NOT NULL, 
    DescriptionEng VARCHAR(100) NOT NULL
)
