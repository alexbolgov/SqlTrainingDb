merge into dbo.Currency as target_data
using 
(
	values 
	('RUB','Российский Рубль','Russian ruble'),
	('USD','Доллар США','Us Dollar'),
	('EUR','Евро','Euro'),
	('CHF','Швейцарский франк','Swiss frank'),
	('CNY','Китайский Юань','China Yuan'),
	('GBP','Английский фунт','British Pound'),
	('AUD','Австралийский доллар','Australian Dollar'),
	('NOK','Норвежская крона','Norwegian Krone'),
	('JPY','Японская Йена','Japanese Yen'),
	('HKD','Гонконгский доллаг','Hong Kong Dollar'),
	('PLN','Польский злотый','Polish zloty'),
	('CZK','Чешская крона','Czech crona'),
	('BYN','Беларусский рубль','Belarus Ruble'),
	('BYR','Беларусский рубль','Belarus Ruble')
) source_data(CurrencyIsoAlphaCode, DescriptionRus, DescriptionEng)
on source_data.CurrencyIsoAlphaCode = target_data.CurrencyIsoAlphaCode
when not matched by target then insert (CurrencyIsoAlphaCode, DescriptionRus, DescriptionEng) values (source_data.CurrencyIsoAlphaCode, source_data.DescriptionRus, source_data.DescriptionEng)
when matched then update set target_data.DescriptionRus = source_data.DescriptionRus, target_data.DescriptionEng = source_data.DescriptionEng;
