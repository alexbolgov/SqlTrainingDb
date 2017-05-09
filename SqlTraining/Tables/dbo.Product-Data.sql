merge into dbo.Product as target_data
using 
(
	values 
	('A_CASH','Наличные денежные средства','Cash'),
	('A_BANK','Межбанковские сделки, актив','Interbank deals'),
	('A_NOSTRO','Ностро-счета','Nostro'),
	('A_CORP_LOAN','Кредиты юридическим лицам','Corporate Loans'),
	('A_RETAIL_MORT','Кредиты физическим лицам, ипотека','Retail loans, mortgage'),
	('A_RETAIL_CONS','Кредиты физическим лицам, потребительские','Retail loans, consumer loans'),
	('A_RETAIL_CARD','Кредиты физическим лицам, карты','Retail loans, credit cards'),
	('A_SECURITY','Ценные бумаги','Securities'),
	('L_LORO','Лоро-счета','Loro'),
	('L_BANK','Межбанковские сделки, пассив','Interbank deals'),
	('L_CORP_DEPO','Вклады юридических лиц','Corporate deposits'),
	('L_CORP_ACC','Счета юридических лиц','Corporate accounts'),
	('L_RETAIL_ACC','Счета физических лиц','Retail accounts'),
	('L_RETAIL_DEPO','Вклады физических лиц','Retail deposits'),
	('L_SECURITY','Выпущенные ценные бумаги','Retail securities'),
	('L_CAPITAL','Капитал','Capital')
) source_data(ProductCode, DescriptionRus, DescriptionEng)
on source_data.ProductCode= target_data.ProductCode
when not matched by target then insert (ProductCode, DescriptionRus, DescriptionEng) values (source_data.ProductCOde, source_data.DescriptionRus, source_data.DescriptionEng)
when matched then update set target_data.DescriptionRus = source_data.DescriptionRus, target_data.DescriptionEng = source_data.DescriptionEng;
