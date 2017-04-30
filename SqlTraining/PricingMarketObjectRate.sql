CREATE TABLE [dbo].[PricingMarketObjectRate]
(
	BookValueDate DATE NOT NULL , 
    PricingMarketObjectID SMALLINT NOT NULL constraint FK_PricingMarketObjectRate_PricingMarketObject foreign key references dbo.PricingMarketObject(PricingMarketObjectID), 
	constraint PK_PricingMarketObjectRate PRIMARY KEY (BookValueDate, PricingMarketObjectID),
    PricingMarketObjectRate DECIMAL(19, 8) NOT NULL
)
