merge into dbo.Client as target_data
using 
(
	select 
		vals.ClientID,
		vals.ValidFrom,
		vals.ValidTo,
		vals.INN,
		vals.LegalForm,
		vals.ShortName,
		vals.FullName,
		c.CountryID,
		e.EconomicActivityID
	from (
		values 
		(1,'2000-01-01','2999-12-31','7704669440','ООО','Мираторг','ООО АПХ Мираторг','RU','A'),
		(2,'2000-01-01','2999-12-31','7728278043','ООО','РусАгро','ООО Группа компаний РусАгро','RU','A'),
		(3,'2000-01-01','2999-12-31',null, null,'Галерея вкуса','Галереия вкуса','BE','A'),
		(4,'2000-01-01','2999-12-31','8401005730','ПАО','Норникель','ПАО ГМК Норильский Никель','RU','B'),
		(5,'2000-01-01','2999-12-31','1433000147','ПАО','Алорса','ПАО АК Алорса ','RU','B'),
		(6,'2000-01-01','2015-07-20','7736050003','ОАО','Газпром','ПАО Газпром','RU','D'),
		(6,'2015-07-21','2999-12-31','7736050003','ПАО','Газпром','ПАО Газпром','RU','D'),
		(7,'2000-01-01','2999-12-31','5036065113','ПАО','МОЭСК','ПАО МОЭСК','RU','D'),
		(8,'2000-01-01','2999-12-31','7713011336','ПАО','ПИК','ПАО Группа компаний ПИК','RU','F'),
		(9,'2000-01-01','2999-12-31','2310031475','ПАО','Магнит','ПАО Магнит','RU','G'),
		(10,'2000-01-01','2999-12-31',null,null,'Aliexpress','AliExpress','CN','G'),
		(11,'2000-01-01','2999-12-31','7825483150','ООО','Теремок','ООО Теремок','RU','I'),
		(12,'2000-01-01','2999-12-31',null,null,'McDonalds','McDonalds','US','I'),
		(13,'2000-01-01','2999-12-31','7736207543','ООО','Yandex','ООО Яндекс','RU','J'),
		(14,'2000-01-01','2999-12-31',null,null,'Google','Google','US','J'),
		(15,'2000-01-01','2999-12-31','7707003506','ФГБОУ ВО','Станкин','ФГБОУ ВО МГТУ Станкин','RU','P'),
		(21,'2000-01-01','2015-08-04','7707083893','ОАО','Сбербанк','ПАО СБЕБРАНК','RU','K'),
		(21,'2015-08-05','2999-12-31','7707083893','ПАО','Сбербанк','ПАО СБЕБРАНК','RU','K'),
		(17,'2000-01-01','2999-12-31','7702070139','ПАО','ВТБ','ПАО ВТБ','RU','K'),
		(18,'2000-01-01','2999-12-31','7710030411','ОА','Юникредит','АО Юникредит Банк','RU','K'),
		(19,'2000-01-01','2999-12-31',null,'LLC','Bank of America','Bank of America','US','K'),
		(20,'2000-01-01','2999-12-31',null,'LLC','Citigroup','Citigroup','US','K'),
		(16,'2000-01-01','2999-12-31',null,null,'БеларусБанк','БеларусБанк','BE','K'),
		(22,'2000-01-01','2999-12-31',null,null,'Deutsche Bank','Deutsche Bank','DE','K'),
		(23,'2000-01-01','2999-12-31','7702235133',null,'Банк России','Центральный Банк Российской Федерации','RU','O')
	) vals(ClientID, ValidFrom, ValidTo, INN, LegalForm, ShortName, FullName, CountryIsoAlpha2Code, EconomicActivityCode)
	join dbo.Country c on c.CountryIsoAlpha2Code = vals.CountryIsoAlpha2Code
	join dbo.EconomicActivity e on e.EconomicActivityCode = vals.EconomicActivityCode
) source_data
on source_data.ClientID = target_data.ClientID and source_data.ValidFrom = target_data.ValidFrom --very bad merging strategy
when not matched by target then 
	insert (ClientID, ValidFrom, ValidTo, INN, LegalForm, ShortName, FullName, CountryID, EconomicActivityID) 
	values (source_data.ClientID, source_data.ValidFrom, source_data.ValidTo, 
		source_data.INN, source_data.LegalForm, source_data.ShortName, source_data.FullName, 
		source_data.CountryID, source_data.EconomicActivityID)
when matched then 
	update set 
		ClientID = source_data.ClientID, 
		ValidFrom = source_data.ValidFrom, 
		ValidTo = source_data.ValidTo, 
		INN = source_data.INN, 
		LegalForm = source_data.LegalForm, 
		ShortName = source_data.ShortName, 
		FullName = source_data.FullName, 
		CountryID = source_data.CountryID, 
		EconomicActivityID = source_data.EconomicActivityID;

