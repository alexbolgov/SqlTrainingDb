merge into dbo.Country as target_data
using 
(
	values 
	('RU','RUS','Российская федерация','Russian Federation'),
	('US','USA','Соединенные штаты Америки','United States of America'),
	('DE','DEU','Герамания','Germany'),
	('NO','NOR','Норвегия','Norway'),
	('BY','BLR','Беларусия','Belarus'),
	('UA','UKR','Украина','Ukraine'),
	('KZ','KAZ','Казахстан','Kazakhstan'),
	('CN','CHN','Китай','China')
) source_data(CountryIsoAlpha2Code, CountryIsoAlpha3Code, NameRus, NameEng)
on source_data.CountryIsoAlpha2Code = target_data.CountryIsoAlpha2Code
when not matched by target then 
	insert (CountryIsoAlpha2Code, CountryIsoAlpha3Code, NameRus, NameEng) 
	values (source_data.CountryIsoAlpha2Code, source_data.CountryIsoAlpha3Code, source_data.NameRus, source_data.NameEng)
when matched then 
	update set 
		target_data.CountryIsoAlpha2Code = source_data.CountryIsoAlpha2Code,
		target_data.CountryIsoAlpha3Code = source_data.CountryIsoAlpha3Code,
		target_data.NameRus = source_data.NameRus,
		target_data.NameEng = source_data.NameEng;
