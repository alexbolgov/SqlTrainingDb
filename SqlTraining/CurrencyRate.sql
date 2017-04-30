CREATE TABLE [dbo].[CurrencyRate]
(
	[BookValueDate] DATE NOT NULL , 
    [CurrencyID] SMALLINT NOT NULL constraint FK_CurrencyRate_Currency_CurrencyID foreign key references dbo.Currency(CurrencyID), 
	constraint PK_CurrencyRate PRIMARY KEY (BookValueDate, CurrencyID),
    [CurrencyRate] DECIMAL(19, 8) NOT NULL
)
