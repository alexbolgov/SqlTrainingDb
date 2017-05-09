with vals as 
(
	select *
	from (
		values 
		('2017-01-01','2017-01-15','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'1000000000',null,null,null),
		('2017-01-16','2017-01-30','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'700000000',null,null,null),
		('2017-01-31','2017-02-06','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'800000000',null,null,null),
		('2017-02-07','2017-02-14','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'170000000',null,null,null),
		('2017-02-15','2017-03-20','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'180000000',null,null,null),
		('2017-03-21','2017-03-30','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'170000000',null,null,null),
		('2017-03-31','2017-04-05','DIASOFT','csh-rub-01','OFF57','A_NOSTRO','RUB',23,null,'2017-01-01','2017-01-01',null,'30000000',null,null,null),
		('2017-01-19','2017-02-13','DIASOFT','csh-usd-01','OFF57','A_NOSTRO','USD',19,null,'2017-01-19','2017-01-19',null,'10000000',null,null,null),
		('2017-02-14','2017-04-04','DIASOFT','csh-usd-01','OFF57','A_NOSTRO','USD',19,null,'2017-01-19','2017-01-19',null,'3000000',null,null,null),
		('2017-04-05','2017-04-16','DIASOFT','csh-usd-01','OFF57','A_NOSTRO','USD',19,null,'2017-01-19','2017-01-19',null,'2900000',null,null,null),
		('2017-04-17','2017-05-09','DIASOFT','csh-usd-01','OFF57','A_NOSTRO','USD',19,null,'2017-01-19','2017-01-19',null,'900000',null,null,null),
		('2017-02-07','2017-02-10','DIASOFT','csh-eur-01','OFF57','A_NOSTRO','EUR',22,null,'2017-01-19','2017-01-19',null,'10000000',null,null,null),
		('2017-02-11','2017-04-14','DIASOFT','csh-eur-01','OFF57','A_NOSTRO','EUR',22,null,'2017-01-19','2017-01-19',null,'1000000',null,null,null),
		('2017-04-15','2017-05-09','DIASOFT','csh-eur-01','OFF57','A_NOSTRO','EUR',22,null,'2017-01-19','2017-01-19',null,'1010000',null,null,null),
		('2017-01-16','2017-05-09','EKS_CORPLOANS','kul-20170116-01','OFF171','A_CORP_LOAN','RUB',9,'300000000','2017-01-16','2017-01-16','2017-05-16','300000000','0','0,12','2M'),
		('2017-02-14','2017-05-09','EKS_CORPLOANS','kul-20170214-01','OFF85','A_CORP_LOAN','USD',6,'7000000','2017-02-14','2017-02-14','2017-08-14','7000000','0','0,05','1M'),
		('2017-02-11','2017-05-09','EKS_CORPLOANS','kul-20170211-01','OFF74','A_CORP_LOAN','EUR',11,'9000000','2017-02-11','2017-02-11','2018-02-11','9000000','0','0,035','3M'),
		('2017-03-31','2017-04-30','MUREX','mbk-20170331','OFF48','A_BANK','RUB',17,'150000000','2017-03-31','2017-03-31','2017-04-30','150000000','0','0,04','2M'),
		('2017-04-05','2017-05-09','EKS_RETAILLONAS','ret-20170405','OFF36','A_RETAIL_MORT','USD',null,'100000','2017-04-05','2017-04-05','2027-04-05','100000','0','0,05','1M'),
		('2017-04-15','2017-05-09','EKS_CORPLOANS','kul-20170415-01','OFF98','A_CORP_LOAN','USD',8,'2000000','2017-04-15','2017-04-15','2019-04-15','2000000','0','0,04',null),
		('2017-01-19','2017-04-19','EKS_CORPDEPOSITS','pul-20170119-01','OFF50','L_CORP_DEPO','USD',14,'-10000000','2017-01-19','2017-01-19','2017-04-19','-1000000','0','0,03',null),
		('2017-01-31','2017-03-31','EKS_RETAILDEPOSITS','rd-20170131-01','OFF34','L_RETAIL_DEPO','RUB',null,'-100000000','2017-01-31','2017-01-31','2017-03-31','-100000000','0','0,075',null),
		('2017-01-01','2017-05-09','EKS_CORPDEPOSITS','pul-20170101-01','OFF57','L_CORP_DEPO','RUB',23,'-900000000','2017-01-01','2017-01-01','2020-01-01','-900000000','0','0,08','6M'),
		('2017-02-15','2017-03-20','EKS_CORPDEPOSITS','pul-20170215-01','OFF17','L_CORP_ACC','RUB',1,null,'2017-02-15','2017-02-15',null,'-10000000','0','0',null),
		('2017-03-21','2017-05-09','EKS_CORPDEPOSITS','pul-20170215-01','OFF17','L_CORP_ACC','RUB',1,null,'2017-02-15','2017-02-15',null,'0','0','0',null),
		('2017-04-15','2017-05-09','EKS_RETAILDEPOSITS','rd-20170415-01','OFF22','L_RETAIL_DEPO','EUR',null,'-10000','2017-04-15','2017-04-15','2018-04-15','-10000','0','0,02','1M'),
		('2017-01-01','2017-05-09','DIASOFT','cap-01','OFF57','L_CAPITAL','RUB',null,'-100000000','2017-01-01','2017-01-01',null,'-100000000',null,null,null)
	) vals(ValidFrom, ValidTo, Ssn, Ssrn, OrgUnitCode, ProductCode, CCY, ClientID, OriginalTotalPrincipal, DealDate, ValueDate, MaturityDate, CurrentPrincipal, PastDueAmount, CurrentInterestRate, InterestPaymentFrequency) 
)
merge into dbo.Deal as target_data
using 
(
	select 
		dates.Date as BookValueDate,
		ss.SourceSystemID as SourceSystemID,
		vals.SourceSystemRecordNumber,
		ou.OrgUnitID,
		c.CurrencyID,
		vals.ClientID,
		vals.OriginalTotalPrincipal,
		vals.DealDate,
		vals.ValueDate,
		vals.MaturityDate,
		vals.CurrentPrincipal,
		vals.PastDueAmount,
		vals.CurrentInterestRate,
		vals.InterestPaymentFrequency
	from vals
	join dbo.dates on dates.date between vals.ValidFrom and vals.ValidTo
	left join dbo.SourceSystem ss on ss.SourceSystemName = vals.SourceSystemName
	left join dbo.OrgUnit ou on ou.OfficeCode = vals.OrgUnitCode
	left join dbo.Product p on p.ProductCode = vals.ProductCode 
	left join dbo.Currency c on c.CurrencyIsoAlphaCode = vals.CCY
) source_data
on source_data.BookValueDate = target_data.BookValueDate and source_data.SourceSystemID = target_data.SourceSystemID and source_data.SourceSystemRecordNumber = target_data.SourceSystemRecordNumber
when not matched by target then 
	insert (BookValueDate, SourceSystemID, SourceSystemRecordNumber, OrgUnitID, ProductID, CurrencyID, ClientID, OriginalTotalPrincipal, DealDate, ValueDate, MaturityDate, CurrentPrincipal, PastDueAmount, CurrentInterestRate, InterestPaymentFrequency) 
	values (source_data.BookValueDate, source_data.SourceSystemID, source_data.SourceSystemRecordNumber, source_data.OrgUnitID, source_data.ProductID, source_data.CurrencyID, source_data.ClientID, source_data.OriginalTotalPrincipal, 
	source_data.DealDate, source_data.ValueDate, source_data.MaturityDate, source_data.CurrentPrincipal, source_data.PastDueAmount, source_data.CurrentInterestRate, source_data.InterestPaymentFrequency)
when matched then 
	update set 
		OrgUnitID = source_data.OrgUnitID, 
		ProductID = source_data.ProductID, 
		CurrencyID = source_data.CurrencyID, 
		ClientID = source_data.ClientID, 
		OriginalTotalPrincipal = source_data.OriginalTotalPrincipal, 
		DealDate = source_data.DealDate, 
		ValueDate = source_data.ValueDate, 
		MaturityDate = source_data.MaturityDate, 
		CurrentPrincipal = source_data.CurrentPrincipal, 
		PastDueAmount = source_data.PastDueAmount, 
		CurrentInterestRate = source_data.CurrentInterestRate, 
		InterestPaymentFrequency = source_data.InterestPaymentFrequency;

