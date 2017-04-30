CREATE TABLE [dbo].[Deal]
(
	BookValueDate DATE NOT NULL,
	SourceSystemID smallint not null constraint FK_Deal_SourceSystem foreign key references dbo.SourceSYstem(SourceSYstemID),
	SourceSystemRecordNumber varchar(100) not null,
	constraint PK_Deal primary key (BookValueDate, SourceSystemID, SourceSystemRecordNumber),
	OrgUnitID int null constraint FK_Deal_OrgUnit foreign key references dbo.OrgUnit(OrgUnitID),
	ProductID tinyint not null constraint FK_Deal_Product foreign key references dbo.Product(ProductID),
	CurrencyID smallint not null constraint FK_Deal_Currency foreign key references dbo.Currency(CurrencyID),
	ClientID int null,
	OriginalTotalPrincipal decimal(22,4) null,
	DealDate date not null,
	ValueDate date null,
	MaturityDate date null,
	CurrentPrincipal decimal(22,4) not null,
	PastDueAmount decimal(22,4) null,
	CurrentInterestRate decimal(9,8) not null, 
    InterestPaymentFrequency varchar(10) not null
)
