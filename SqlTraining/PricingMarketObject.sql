CREATE TABLE [dbo].[PricingMarketObject]
(
	PricingMarketObjectID smallint NOT NULL constraint PK_PricingMarketObject PRIMARY KEY,
	PricingMarketObjectCode varchar(100) not null constraint UK_PricingMarketObject unique,
	DescriptionRus varchar(100) not null,
	DescriptionEng varchar(100) not null
)
