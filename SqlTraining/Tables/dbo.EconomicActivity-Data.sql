merge into dbo.EconomicActivity target_data
using (
	values 
	('A','Сельское хозяйство, лесоводство и рыболовство','Agriculture, forestry and fishing'),
	('B','Горнодобывающая промышленность и разработка карьеров','Mining and quarrying'),
	('C','Обрабатывающая промышленность','Manufacturing'),
	('D','Снабжение электричеством, газом, паром и кондиционированным воздухом','Electricity, gas, steam and air conditioning supply'),
	('E','Водоснабжение; системы канализации, удаление отходов и меры по восстановлению окружающей среды','Water supply; sewerage, waste management and remediation activities'),
	('F','Строительство','Construction'),
	('G','Оптовая и розничная торговля; ремонт автомобилей и мотоциклов','Wholesale and retail trade; repair of motor vehicles and motorcycles'),
	('H','Транспорт и складское хозяйство','Transportation and storage'),
	('I','Размещение и общественное питание','Accommodation and food service activities'),
	('J','Информация и связь','Information and communication'),
	('K','Финансовая деятельность и страхование','Financial and insurance activities'),
	('L','Операции с недвижимым имуществом','Real estate activities'),
	('M','Профессиональная, научная и техническая деятельность','Professional, scientific and technical activities'),
	('N','Деятельность в сфере административных и вспомогательных услуг','Administrative and support service activities'),
	('O','Государственное управление и оборона; обязательное социальное страхование','Public administration and defence; compulsory social security'),
	('P','Образование','Education'),
	('Q','Деятельность в сфере здравоохранения и социальных услуг','Human health and social work activities'),
	('R','Искусство, сфера развлечений и отдыха','Arts, entertainment and recreation'),
	('S','Прочие виды деятельности в сфере услуг','Other service activities'),
	('T','Деятельность домашних хозяйств в качестве работодателей; недифференцированная деятельность домашних хозяйств по производству товаров и услуг для собственного использования','Activities of households as employers; undifferentiated goods and services-producing activities of households for own use'),
	('U','Деятельность экстерриториальных организаций и органов','Activities of extraterritorial organizations and bodies') ) source_data(EconomicActivityCode, DescriptionRus, DescriptionEng)
on source_data.EconomicActivityCode = target_data.EconomicActivityCode
when not matched by target then insert (EconomicActivityCode, DescriptionRus, DescriptionEng) values (source_data.EconomicActivityCode, source_data.DescriptionRus, source_data.DescriptionEng)
when matched then update set target_data.DescriptionRus = source_data.DescriptionRus, target_data.DescriptionEng = source_data.DescriptionEng;
