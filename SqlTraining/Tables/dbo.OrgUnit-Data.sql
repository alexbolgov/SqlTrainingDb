﻿merge into dbo.OrgUnit as target_data
using 
(
	values 
	('BB','Байкальский банк','ZBK','Забайкальский край','OFF1','Отделение №1'),
	('BB','Байкальский банк','ZBK','Забайкальский край','OFF2','Отделение №2'),
	('BB','Байкальский банк','ZBK','Забайкальский край','OFF3','Отделение №3'),
	('BB','Байкальский банк','IRK','Иркутская область','OFF4','Отделение №4'),
	('BB','Байкальский банк','IRK','Иркутская область','OFF5','Отделение №5'),
	('BB','Байкальский банк','IRK','Иркутская область','OFF6','Отделение №6'),
	('BB','Байкальский банк','BUR','Республика Бурятия','OFF7','Отделение №7'),
	('BB','Байкальский банк','BUR','Республика Бурятия','OFF8','Отделение №8'),
	('BB','Байкальский банк','SAXA','Республика Саха','OFF9','Отделение №9'),
	('BB','Байкальский банк','SAXA','Республика Саха','OFF10','Отделение №10'),
	('VV','Волго-вятский банк','NIJG','Нижегородская область','OFF11','Отделение №11'),
	('VV','Волго-вятский банк','NIJG','Нижегородская область','OFF12','Отделение №12'),
	('VV','Волго-вятский банк','NIJG','Нижегородская область','OFF13','Отделение №13'),
	('VV','Волго-вятский банк','VLAD','Владимирская область','OFF14','Отделение №14'),
	('VV','Волго-вятский банк','VLAD','Владимирская область','OFF15','Отделение №15'),
	('VV','Волго-вятский банк','KIR','Кировская область','OFF16','Отделение №16'),
	('VV','Волго-вятский банк','KIR','Кировская область','OFF17','Отделение №17'),
	('VV','Волго-вятский банк','KIR','Кировская область','OFF18','Отделение №18'),
	('VV','Волго-вятский банк','MORD','Республика Мордовия','OFF19','Отделение №19'),
	('VV','Волго-вятский банк','MORD','Республика Мордовия','OFF20','Отделение №20'),
	('VV','Волго-вятский банк','MARII','Республика Марий Эл','OFF21','Отделение №21'),
	('VV','Волго-вятский банк','MARII','Республика Марий Эл','OFF22','Отделение №22'),
	('VV','Волго-вятский банк','CHUV','Чувашская Республика','OFF23','Отделение №23'),
	('VV','Волго-вятский банк','CHUV','Чувашская Республика','OFF24','Отделение №24'),
	('VV','Волго-вятский банк','TATAR','Республика Татарстан','OFF25','Отделение №25'),
	('DV','Дальневосточный банк','HABAR','Хабаровский край','OFF26','Отделение №26'),
	('DV','Дальневосточный банк','HABAR','Хабаровский край','OFF27','Отделение №27'),
	('DV','Дальневосточный банк','PRIM','Приморский край','OFF28','Отделение №28'),
	('DV','Дальневосточный банк','PRIM','Приморский край','OFF29','Отделение №29'),
	('DV','Дальневосточный банк','AMUR','Амурская область ','OFF30','Отделение №30'),
	('DV','Дальневосточный банк','AMUR','Амурская область ','OFF31','Отделение №31'),
	('DV','Дальневосточный банк','SAH','Сахалинская область','OFF32','Отделение №32'),
	('DV','Дальневосточный банк','SAH','Сахалинская область','OFF33','Отделение №33'),
	('DV','Дальневосточный банк','SAH','Сахалинская область','OFF34','Отделение №34'),
	('DV','Дальневосточный банк','EVR','Еврейская автономная область','OFF35','Отделение №35'),
	('DV','Дальневосточный банк','EVR','Еврейская автономная область','OFF36','Отделение №36'),
	('DV','Дальневосточный банк','MAGAD','Магаданская область','OFF37','Отделение №37'),
	('DV','Дальневосточный банк','KAMCH','Камчатский край','OFF38','Отделение №38'),
	('DV','Дальневосточный банк','CHUK','Чукотский автономный округ','OFF39','Отделение №39'),
	('ZS','Западно-Сибирский банк','TUM','Тюменская область','OFF40','Отделение №40'),
	('ZS','Западно-Сибирский банк','TUM','Тюменская область','OFF41','Отделение №41'),
	('ZS','Западно-Сибирский банк','TUM','Тюменская область','OFF42','Отделение №42'),
	('ZS','Западно-Сибирский банк','OMSK','Омская область','OFF43','Отделение №43'),
	('ZS','Западно-Сибирский банк','OMSK','Омская область','OFF44','Отделение №44'),
	('ZS','Западно-Сибирский банк','OMSK','Омская область','OFF45','Отделение №45'),
	('ZS','Западно-Сибирский банк','HANTY','Хантмы-Мансийский автономный округ - Югра','OFF46','Отделение №46'),
	('ZS','Западно-Сибирский банк','HANTY','Хантмы-Мансийский автономный округ - Югра','OFF47','Отделение №47'),
	('ZS','Западно-Сибирский банк','YAMAL','Ямало-Ненецкий автомномный округ','OFF48','Отделение №48'),
	('ZS','Западно-Сибирский банк','YAMAL','Ямало-Ненецкий автомномный округ','OFF49','Отделение №49'),
	('ZU','Западно-Уральский банк','PERM','Пермский край','OFF50','Отделение №50'),
	('ZU','Западно-Уральский банк','KOMI','Республика Коми','OFF51','Отделение №51'),
	('ZU','Западно-Уральский банк','KOMI','Республика Коми','OFF52','Отделение №52'),
	('ZU','Западно-Уральский банк','UDMU','Удмуртская Республика','OFF53','Отделение №53'),
	('ZU','Западно-Уральский банк','UDMU','Удмуртская Республика','OFF54','Отделение №54'),
	('MB','Московский банк','MSK','Город Москва','OFF55','Отделение №55'),
	('MB','Московский банк','MSK','Город Москва','OFF56','Отделение №56'),
	('MB','Московский банк','MSK','Город Москва','OFF57','Отделение №57'),
	('MB','Московский банк','MSK','Город Москва','OFF58','Отделение №58'),
	('MB','Московский банк','MSK','Город Москва','OFF59','Отделение №59'),
	('MB','Московский банк','MSK','Город Москва','OFF60','Отделение №60'),
	('PB','Поволжский банк','SAMAR','Самарская  область','OFF61','Отделение №61'),
	('PB','Поволжский банк','SAMAR','Самарская  область','OFF62','Отделение №62'),
	('PB','Поволжский банк','ULYAN','Ульяновская  область','OFF63','Отделение №63'),
	('PB','Поволжский банк','ULYAN','Ульяновская  область','OFF64','Отделение №64'),
	('PB','Поволжский банк','ORNB','Оренбургская  область','OFF65','Отделение №65'),
	('PB','Поволжский банк','ORNB','Оренбургская  область','OFF66','Отделение №66'),
	('PB','Поволжский банк','ORNB','Оренбургская  область','OFF67','Отделение №67'),
	('PB','Поволжский банк','SARAT','Саратовская  область','OFF68','Отделение №68'),
	('PB','Поволжский банк','SARAT','Саратовская  область','OFF69','Отделение №69'),
	('PB','Поволжский банк','VLG','Волгоградская  область','OFF70','Отделение №70'),
	('PB','Поволжский банк','VLG','Волгоградская  область','OFF71','Отделение №71'),
	('PB','Поволжский банк','VLG','Волгоградская  область','OFF72','Отделение №72'),
	('PB','Поволжский банк','ASTR','Астраханская  область','OFF73','Отделение №73'),
	('PB','Поволжский банк','ASTR','Астраханская  область','OFF74','Отделение №74'),
	('PB','Поволжский банк','ASTR','Астраханская  область','OFF75','Отделение №75'),
	('PB','Поволжский банк','PENZ','Пензенская область ','OFF76','Отделение №76'),
	('PB','Поволжский банк','PENZ','Пензенская область ','OFF77','Отделение №77'),
	('SB','Северный банк','YAR','Ярославская область','OFF78','Отделение №78'),
	('SB','Северный банк','YAR','Ярославская область','OFF79','Отделение №79'),
	('SB','Северный банк','YAR','Ярославская область','OFF80','Отделение №80'),
	('SB','Северный банк','KOSTR','Костромская область','OFF81','Отделение №81'),
	('SB','Северный банк','KOSTR','Костромская область','OFF82','Отделение №82'),
	('SB','Северный банк','IVAN','Ивановская область','OFF83','Отделение №83'),
	('SB','Северный банк','IVAN','Ивановская область','OFF84','Отделение №84'),
	('SB','Северный банк','IVAN','Ивановская область','OFF85','Отделение №85'),
	('SB','Северный банк','VOLOG','Вологодская область','OFF86','Отделение №86'),
	('SB','Северный банк','VOLOG','Вологодская область','OFF87','Отделение №87'),
	('SB','Северный банк','ARCH','Архангельская область','OFF88','Отделение №88'),
	('SB','Северный банк','ARCH','Архангельская область','OFF89','Отделение №89'),
	('SB','Северный банк','NENC','Ненецкий автономный округ','OFF90','Отделение №90'),
	('SB','Северный банк','NENC','Ненецкий автономный округ','OFF91','Отделение №91'),
	('SZ','Северо-Западный банк','SNKTPTR','город Санкт-Петербург','OFF92','Отделение №92'),
	('SZ','Северо-Западный банк','SNKTPTR','город Санкт-Петербург','OFF93','Отделение №93'),
	('SZ','Северо-Западный банк','SNKTPTR','город Санкт-Петербург','OFF94','Отделение №94'),
	('SZ','Северо-Западный банк','SNKTPTR','город Санкт-Петербург','OFF95','Отделение №95'),
	('SZ','Северо-Западный банк','LENINGR','Ленинградская область','OFF96','Отделение №96'),
	('SZ','Северо-Западный банк','LENINGR','Ленинградская область','OFF97','Отделение №97'),
	('SZ','Северо-Западный банк','MURM','Мурманская область','OFF98','Отделение №98'),
	('SZ','Северо-Западный банк','MURM','Мурманская область','OFF99','Отделение №99'),
	('SZ','Северо-Западный банк','KALIN','Калининградская область','OFF100','Отделение №100'),
	('SZ','Северо-Западный банк','KALIN','Калининградская область','OFF101','Отделение №101'),
	('SZ','Северо-Западный банк','PSKOV','Псковская область','OFF102','Отделение №102'),
	('SZ','Северо-Западный банк','PSKOV','Псковская область','OFF103','Отделение №103'),
	('SZ','Северо-Западный банк','NOVG','Новгородская область','OFF104','Отделение №104'),
	('SZ','Северо-Западный банк','NOVG','Новгородская область','OFF105','Отделение №105'),
	('SZ','Северо-Западный банк','KAREL','Республика Карелия','OFF106','Отделение №106'),
	('SZ','Северо-Западный банк','KAREL','Республика Карелия','OFF107','Отделение №107'),
	('SZ','Сибирский банк','NOVOSIB','Новосибирская область','OFF108','Отделение №108'),
	('SZ','Сибирский банк','NOVOSIB','Новосибирская область','OFF109','Отделение №109'),
	('SZ','Сибирский банк','NOVOSIB','Новосибирская область','OFF110','Отделение №110'),
	('SZ','Сибирский банк','TMSK','Томская область','OFF111','Отделение №111'),
	('SZ','Сибирский банк','TMSK','Томская область','OFF112','Отделение №112'),
	('SZ','Сибирский банк','KEMER','Кемеровская область','OFF113','Отделение №113'),
	('SZ','Сибирский банк','KEMER','Кемеровская область','OFF114','Отделение №114'),
	('SZ','Сибирский банк','ALTAYSK','Алтайский край','OFF115','Отделение №115'),
	('SZ','Сибирский банк','ALTAYSK','Алтайский край','OFF116','Отделение №116'),
	('SZ','Сибирский банк','ALTAI','Республика Алтай','OFF117','Отделение №117'),
	('SZ','Сибирский банк','ALTAI','Республика Алтай','OFF118','Отделение №118'),
	('SZ','Сибирский банк','KRASNO','Красноярский край','OFF119','Отделение №119'),
	('SZ','Сибирский банк','TYVA','Республика Тыва','OFF120','Отделение №120'),
	('SZ','Сибирский банк','HAKAS','Республика Хакасия','OFF121','Отделение №121'),
	('SZ','Сибирский банк','HAKAS','Республика Хакасия','OFF122','Отделение №122'),
	('SR','Среднерусский банк','MOSOBL','Московская область','OFF123','Отделение №123'),
	('SR','Среднерусский банк','MOSOBL','Московская область','OFF124','Отделение №124'),
	('SR','Среднерусский банк','TVER','Тверская область','OFF125','Отделение №125'),
	('SR','Среднерусский банк','TVER','Тверская область','OFF126','Отделение №126'),
	('SR','Среднерусский банк','KALUG','Калужская область','OFF127','Отделение №127'),
	('SR','Среднерусский банк','KALUG','Калужская область','OFF128','Отделение №128'),
	('SR','Среднерусский банк','BRYANSK','Брянская область','OFF129','Отделение №129'),
	('SR','Среднерусский банк','BRYANSK','Брянская область','OFF130','Отделение №130'),
	('SR','Среднерусский банк','SMOL','Смоленская область','OFF131','Отделение №131'),
	('SR','Среднерусский банк','TULSK','Тульская область','OFF132','Отделение №132'),
	('SR','Среднерусский банк','TULSK','Тульская область','OFF133','Отделение №133'),
	('SR','Среднерусский банк','RYAZAN','Рязанская область','OFF134','Отделение №134'),
	('UB','Уральский банк','SVERDL','Свердловская область','OFF135','Отделение №135'),
	('UB','Уральский банк','SVERDL','Свердловская область','OFF136','Отделение №136'),
	('UB','Уральский банк','SVERDL','Свердловская область','OFF137','Отделение №137'),
	('UB','Уральский банк','CHELAB','Челябинская область','OFF138','Отделение №138'),
	('UB','Уральский банк','KURG','Курганская области область','OFF139','Отделение №139'),
	('UB','Уральский банк','KURG','Курганская области область','OFF140','Отделение №140'),
	('UB','Уральский банк','KURG','Курганская области область','OFF141','Отделение №141'),
	('UB','Уральский банк','BASHKOR','Республика Башкортостан','OFF142','Отделение №142'),
	('CH','Центрально-Черноземный банк','VORON','Воронежская область','OFF143','Отделение №143'),
	('CH','Центрально-Черноземный банк','VORON','Воронежская область','OFF144','Отделение №144'),
	('CH','Центрально-Черноземный банк','ORL','Орловская область','OFF145','Отделение №145'),
	('CH','Центрально-Черноземный банк','ORL','Орловская область','OFF146','Отделение №146'),
	('CH','Центрально-Черноземный банк','LIPETSK','Липецкая область','OFF147','Отделение №147'),
	('CH','Центрально-Черноземный банк','LIPETSK','Липецкая область','OFF148','Отделение №148'),
	('CH','Центрально-Черноземный банк','KURSK','Курская область','OFF149','Отделение №149'),
	('CH','Центрально-Черноземный банк','BELGOROD','Белгородская область','OFF150','Отделение №150'),
	('CH','Центрально-Черноземный банк','BELGOROD','Белгородская область','OFF151','Отделение №151'),
	('CH','Центрально-Черноземный банк','TAMB','Тамбовская область','OFF152','Отделение №152'),
	('UZ','Юго-Западный банк','ROST','Ростовская область','OFF153','Отделение №153'),
	('UZ','Юго-Западный банк','ROST','Ростовская область','OFF154','Отделение №154'),
	('UZ','Юго-Западный банк','KRASNODAR','Краснодарский край','OFF155','Отделение №155'),
	('UZ','Юго-Западный банк','KRASNODAR','Краснодарский край','OFF156','Отделение №156'),
	('UZ','Юго-Западный банк','ADYGEYA','Республика Адыгея','OFF157','Отделение №157'),
	('UZ','Юго-Западный банк','ADYGEYA','Республика Адыгея','OFF158','Отделение №158'),
	('UZ','Юго-Западный банк','ADYGEYA','Республика Адыгея','OFF159','Отделение №159'),
	('UZ','Юго-Западный банк','STAVROPOL','Ставропольский край','OFF160','Отделение №160'),
	('UZ','Юго-Западный банк','INGUSH','Республика Ингушетия','OFF161','Отделение №161'),
	('UZ','Юго-Западный банк','INGUSH','Республика Ингушетия','OFF162','Отделение №162'),
	('UZ','Юго-Западный банк','OSETIA','Республика Северная Осетия — Алания','OFF163','Отделение №163'),
	('UZ','Юго-Западный банк','KBR','Кабардино-Балкарская Республика','OFF164','Отделение №164'),
	('UZ','Юго-Западный банк','KBR','Кабардино-Балкарская Республика','OFF165','Отделение №165'),
	('UZ','Юго-Западный банк','DAG','Республика Дагестан','OFF166','Отделение №166'),
	('UZ','Юго-Западный банк','DAG','Республика Дагестан','OFF167','Отделение №167'),
	('UZ','Юго-Западный банк','KARACH','Карачаево-Черкесская Республика','OFF168','Отделение №168'),
	('UZ','Юго-Западный банк','KARACH','Карачаево-Черкесская Республика','OFF169','Отделение №169'),
	('UZ','Юго-Западный банк','KALM','Республика Калмыкия','OFF170','Отделение №170'),
	('UZ','Юго-Западный банк','CHECH','Чеченская Республика','OFF171','Отделение №171')
) source_data(DivisionCode, DivisionName, BranchCode, BranchName, OfficeCode, OfficeName)
on source_data.DivisionCode = target_data.DivisionCode and source_data.BranchCode = target_data.BranchCode and source_data.OfficeCode = target_data.OfficeCode
when not matched by target then 
	insert (DivisionCode, DivisionName, BranchCode, BranchName, OfficeCode, OfficeName) 
	values (source_data.DivisionCode, source_data.DivisionName, source_data.BranchCode, source_data.BranchName, source_data.OfficeCode, source_data.OfficeName)
when matched then 
	update set 
		target_data.DivisionName = source_data.DivisionName,
		target_data.BranchName = source_data.BranchName,
		target_data.OfficeName = source_data.OfficeName;