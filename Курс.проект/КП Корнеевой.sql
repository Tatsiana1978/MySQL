-- ----------------------------- КУРСОВОЙ ПРОЕКТ (Корнеевой Т.В.)---------------------


/* ***************** Тема: НЕДВИЖИМОСТЬ: АНАЛИЗ, ПРОГНОЗИРОВАНИЕ. ***********************

------------------------------ ОПИСАНИЕ -----------------------------------------
/* 1. База данных (БД) содержит список объектов недвижимости (ОН), по которым совершились сделки (покупка, продажа, аренда).
 * 2. Категория объектов недвижимости: квартиры, дома, коммерческая недвижимость, земельные участки.
 * 3. Виды объектов недвижимости: 
 *		 Квартиры:  квартира, студия, свободная планировка, аппартаменты, комната.  
 * 		 Дома:      Дом, Полдома, Коттедж, Дача, Таунхаус, Дуплекс
 * 		 Коммерческая недвижимость: помещение под офис, квартира под офис, помещение для розничной торговли, 
 * 		 готовый бизнес, склад, помещение под производство.
 * 		 Земельные участки: ИЖС, СНТ, сельхозназначения, аренда. 
 * 4. Информация по каждому ОН: цена, валюта, цена за метр квадратный (расчетная), , ссылки на фото, дата заявления о сделке
 *    (подачи объявления), дата продажи, населенный пункт, район населенного пункта, форма собственности.
 * 5. Характеристики объекта: 
 *  	 Квартиры:  кадастровый номер объекта (уникальность проверять), количество комнат, этажность, этаж, площадь общая/жилая/кухни,  
 * 					наличие магазина, наличие дет.сада, наличие школы, парковки, расстояние до центра, расстояние до пляжа, лоджия/балкон,  
 * 					расстояние до метро, наличие рядом водоема, парка, леса, вида из окна, год постройки, наличие рядом градостроительного
 * 					предприятия, тип строительства (монолитно-каркасный, кирпичный, плитный), ремонт, мебель, тип отопления и водоснабжения, раздельный санузел,
 * 					населенный пункт, улица, номер дома, район населенного пункта, ЖК, класс жилья (комфорт/эконом), стадия строительства(для новостр). 
 * 					СТАТУС - новостройка / вторичное жилье 
 * 		 Дома:      кадастровый номер объекта, этажность,  площадь общая/жилая/кухни, количество комнат, площадь зем.участка, расстояние до города ,
 * 					наличие газоснабжения, электричества, наличие гаража, тип отопления и водоснабжения, количество санузелов, наличие магазина, 
 * 					наличие дет.сада, наличие школы, парковки, расстояние до центра, расстояние до пляжа,   
 * 					расстояние до метро, наличие рядом водоема, парка, леса, вида из окна, год постройки, наличие рядом градостроительного
 * 					предприятия, тип строительства (монолитно-каркасный, кирпичный, плитный), ремонт, мебель,
 * 					населенный пункт, улица, номер дома, район населенного пункта. 
 * 					СТАТУС - новостройка / вторичное жилье 
 * 		 Коммерческая недвижимость: кадастровый номер объекта, этажность, этаж, площадь, назначение, электричество, водоснабжение, газификация,
 * 					ремонт, мебель, населенный пункт, улица, номер дома, район населенного пункта. СТАТУС - новостройка / вторичное жилье
 * 		 Земельные участки: площадь, наличие электричества, газификации, водоснабжения, подъездные пути, населенный пункт, улица,  
 * 					район населенного пункта, кадастровый номер объекта. 
 * 
 * 6. Условия оплаты: наличные, ипотека, кредит, военная ипотека, расскрочка, маткапитал, жилищные сертификаты, обмен.
 * 7. Виды сделок: покупка/продажа, аренда долгосрочная, аренда посуточная.
 * 8. Фотографии объектов
 * 9. Пользователи: Имя, телефон, эл.почта, статус (продавец/покупаетель). 
 * 10.Таблица Внешние факторы, влияющие на рынок недвижимости: Политические, Экономические, Демографические, Социально-культурные,
 *    Научно-технические, Природно-географические (инфраструктура, коммуникации, градообразующие предприятия, проводимые мероприятия, 
 *    муниципальные программы, кредитно-ипотечная среда, экономическое и социальное благополучие района, качество коммунального обслуживания, 
 *    инфляция, курс доллара, а это влияет на ипотечные условия, уровень дохода населения, политические факторы, информационное вмешательство, 
 *    временной период наличия этих факторов )
 *    Так, например, судя по частой покупке-продаже квартир в определенных районах, можно судить о благополучии дома/района и наличии скрытых факторов (качество строительства, низкий социальный уровень жизни района, 
 * 	  качество коммунального обслуживания). Информация полезна для градостроительных планов.
 * 
 * 11. Таблица ЗАПРОСЫ ПОКУПАТЕЛЕЙ
 * 
 * ЗАДАЧИ:
 * - структурирование и анализ рынка недвижимости .
 * - изучение покупательского спроса и предпочтений.
 * - прогнозировние спроса и цен на недвижимость.
 * 
 * В соответствии с этими задачами - сводные таблицы - Представления:
 * - Структура рынка спроса на ОН (по купленной недвижимости) = Предпочтения покупателей по ОН.
 * - Среднерыночные цены на недвижимость по видам и категориям ОН, населенным пунктам, районам населенных пунктов, в т.ч. за м2
 * - Калькулятор стоимости ОН (в рассчет берется средняя цена продажи на однотипные ОН по населенному пункту, по району, по дому, 
 *   учитываются ценообразующие  ОН: площадь, ремонт(мебель учитывают отдельно), применяются коэффициенты 
 *   привлекательности за этажность, вид из окна, паркинг.) 
 * - триггер подсчета количества сделок за день
 * - триггер, добавляющий запрос покупателя

 * 
 *  */ 

-- -----------------------------------------------------------------
-- 1. создаем БД
-- -----------------------------------------------------------------
DROP DATABASE IF EXISTS kp_nedvizh;
CREATE DATABASE kp_nedvizh;

USE kp_nedvizh;

-- -----------------------------------------------------------------
-- 2. Создаем и заполняем таблицу Категория объектов недвижимости: квартиры, дома, коммерческая недвижимость, земельные участки.
-- -----------------------------------------------------------------
DROP TABLE IF EXISTS category ;
CREATE TABLE category (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255),
	UNIQUE unique_name(name(10))
) COMMENT = 'Категория объектов недвижимости' ;

INSERT INTO category VALUES
  (NULL, 'Квартиры'),
  (NULL, 'Дома'),
  (NULL, 'Коммерческая недвижимость'),
  (NULL, 'Земельные участки');

-- SELECT * FROM category c -- проверили id, чтобы назначить объектам
 
-- ----------------------------------------------------------------- 
-- 3. Создадим таблицу Виды объектов недвижимости: 
-- -----------------------------------------------------------------
DROP TABLE IF EXISTS types_real ;
CREATE TABLE types_real (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255) COMMENT 'Вид объекта недвижимости',
	UNIQUE unique_name(name(20)),
	
	category_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Категория объекта', 
	CONSTRAINT category_id FOREIGN KEY (category_id) REFERENCES category (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE	
) COMMENT = 'Вид объекта недвижимости' ;

INSERT INTO types_real VALUES

  (NULL, 'Квартира', 1 ),
  (NULL, 'Студия', 1 ),
  (NULL, 'Свободная планировка', 1 ),
  (NULL, 'Аппартаменты', 1 ),
  (NULL, 'Комната', 1 ),
  (NULL, 'Дом', 2),
  (NULL, 'Полдома', 2),
  (NULL, 'Коттедж', 2),
  (NULL, 'Дача', 2),
  (NULL, 'Таунхаус', 2),
  (NULL, 'Дуплекс', 2),
  (NULL, 'Помещение под офис', 3),
  (NULL, 'Квартира под офис', 3),
  (NULL, 'Помещение для розничной торговли', 3),
  (NULL, 'Готовый бизнес', 3),
  (NULL, 'Склад', 3),
  (NULL, 'Производственное помещение', 3),
  (NULL, 'Участок для ИЖС', 4),
  (NULL, 'Участок в СНТ', 4),
  (NULL, 'Участок СХН', 4),
  (NULL, 'Участок в аренду', 4) ;
 
 -- ----------------------------------------------------------------- 
 -- 8. Таблица Фотографии объектов
 -- -----------------------------------------------------------------
DROP TABLE IF EXISTS foto  ;
CREATE TABLE foto (
	id SERIAL PRIMARY KEY, 
	metadata LONGTEXT DEFAULT NULL 
) COMMENT = 'Фотографии объектов' ;

 
-- -----------------------------------------------------------------  
 -- 6. Создаем таблицу Условия оплаты
-- ----------------------------------------------------------------- 
DROP TABLE IF EXISTS payment ;
CREATE TABLE payment (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255),
	UNIQUE unique_name(name(10))
) COMMENT = 'Условия оплаты' ;
 
INSERT INTO payment VALUES  

  (NULL, 'наличные'),
  (NULL, 'ипотека'),
  (NULL, 'кредит'),
  (NULL, 'рассрочка'),
  (NULL, 'военная ипотека'),
  (NULL, 'маткапитал'),
  (NULL, 'обмен') ;
 
 -- -----------------------------------------------------------------
 -- 7. Создаем таблицу Виды сделок
-- -----------------------------------------------------------------
DROP TABLE IF EXISTS type_transactions ;
CREATE TABLE type_transactions (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255) COMMENT 'Вид сделки'
) COMMENT = 'Виды сделок' ;
 
INSERT INTO type_transactions VALUES  

  (NULL, 'покупка/продажа'),
  (NULL, 'аренда долгосрочная'),
  (NULL, 'аренда посуточная') ;
 
 
-- -----------------------------------------------------------------
 -- 9. Создаем таблицу  Пользователи: Имя, телефон, эл.почта, статус: продавец/покупатель. 
-- ----------------------------------------------------------------- 
DROP TABLE IF EXISTS users ;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100) COMMENT 'Имя Продавца',
	phone bigint DEFAULT NULL COMMENT 'Телефон',
	UNIQUE  KEY phone (phone),
	email VARCHAR(100) COMMENT 'Эл.Почта',
	status VARCHAR(100) COMMENT 'Продавец/покупатель',
	password1 varchar(100) DEFAULT NULL,
	UNIQUE KEY email (email),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Пользователи' ;
 
INSERT INTO users VALUES

(1, 'Андрей', 89288411500, '11@ff1', 'Покупатель', 'dv35adsc68', '2014-12-01', '2015-08-01'),
(2, 'Михаил', 89288411511, '11@ff2', 'Продавец', 'dv35adsc69', '2014-12-01', '2015-08-01'),
(3, 'Татьяна', 89288411522, '11@ff3', 'Покупатель', 'dv35adsc70', '2014-12-01', '2015-08-01'),
(4, 'Елена', 89288411533, '11@ff4', 'Покупатель', 'dv35adsc71', '2014-12-01', '2015-08-01'),
(5, 'Ольга', 89288411544, '11@ff5', 'Продавец', 'dv35adsc72', '2014-12-01', '2015-08-01'),
(6, 'Сергей', 89288411555, '11@ff6', 'Покупатель', 'dv35adsc73', '2014-12-01', '2015-08-01'),
(7, 'Светлана', 89288411566, '11@ff7', 'Продавец', 'dv35adsc74', '2014-12-01', '2015-08-01'),
(8, 'Вячеслав', 89288411577, '11@ff8', 'Покупатель', 'dv35adsc75', '2014-12-01', '2015-08-01'),
(9, 'Юрий', 89288411588, '11@ff9', 'Продавец', 'dv35adsc76', '2014-12-01', '2015-08-01'),
(10, 'Петр', 89288411599, '11@ff10', 'Покупатель', 'dv35adsc77', '2014-12-01', '2015-08-01'),
(11, 'Андрей', 89288411610, '11@ff11', 'Покупатель', 'dv35adsc78', '2014-12-01', '2015-08-01'),
(12, 'Михаил', 89288411621, '11@ff12', 'Продавец', 'dv35adsc79', '2014-12-01', '2015-08-01'),
(13, 'Татьяна', 89288411632, '11@ff13', 'Покупатель', 'dv35adsc80', '2014-12-01', '2015-08-01'),
(14, 'Елена', 89288411643, '11@ff14', 'Покупатель', 'dv35adsc81', '2014-12-01', '2015-08-01'),
(15, 'Ольга', 89288411654, '11@ff15', 'Продавец', 'dv35adsc82', '2014-12-01', '2015-08-01'),
(16, 'Сергей', 89288411665, '11@ff16', 'Покупатель', 'dv35adsc83', '2014-12-01', '2015-08-01'),
(17, 'Светлана', 89288411676, '11@ff17', 'Продавец', 'dv35adsc84', '2014-12-01', '2015-08-01'),
(18, 'Вячеслав', 89288411687, '11@ff18', 'Покупатель', 'dv35adsc85', '2014-12-01', '2015-08-01'),
(19, 'Юрий', 89288411698, '11@ff19', 'Продавец', 'dv35adsc86', '2014-12-01', '2015-08-01'),
(20, 'Петр', 89288411709, '11@ff20', 'Покупатель', 'dv35adsc87', '2014-12-01', '2015-08-01'),
(21, 'Андрей', 89288411720, '11@ff21', 'Продавец', 'dv35adsc88', '2014-12-01', '2015-08-01'),
(22, 'Андрей', 89288411731, '11@ff22', 'Покупатель', 'dv35adsc89', '2014-12-01', '2015-08-01'),
(23, 'Михаил', 89288411742, '11@ff23', 'Продавец', 'dv35adsc90', '2014-12-01', '2015-08-01'),
(24, 'Татьяна', 89288411753, '11@ff24', 'Покупатель', 'dv35adsc91', '2014-12-01', '2015-08-01'),
(25, 'Елена', 89288411764, '11@ff25', 'Продавец', 'dv35adsc92', '2014-12-01', '2015-08-01'),
(26, 'Ольга', 89288411775, '11@ff26', 'Покупатель', 'dv35adsc93', '2014-12-01', '2015-08-01'),
(27, 'Сергей', 89288411786, '11@ff27', 'Продавец', 'dv35adsc94', '2014-12-01', '2015-08-01'),
(28, 'Светлана', 89288411797, '11@ff28', 'Покупатель', 'dv35adsc95', '2014-12-01', '2015-08-01'),
(29, 'Вячеслав', 89288411808, '11@ff29', 'Продавец', 'dv35adsc96', '2014-12-01', '2015-08-01'),
(30, 'Юрий', 89288411819, '11@ff30', 'Покупатель', 'dv35adsc97', '2014-12-01', '2015-08-01'),
(31, 'Петр', 89288411830, '11@ff31', 'Продавец', 'dv35adsc98', '2014-12-01', '2015-08-01'),
(32, 'Андрей', 89288411841, '11@ff32', 'Покупатель', 'dv35adsc99', '2014-12-01', '2015-08-01'),
(33, 'Михаил', 89288411852, '11@ff33', 'Продавец', 'dv35adsc100', '2014-12-01', '2015-08-01'),
(34, 'Татьяна', 89288411863, '11@ff34', 'Покупатель', 'dv35adsc101', '2014-12-01', '2015-08-01'),
(35, 'Елена', 89288411874, '11@ff35', 'Продавец', 'dv35adsc102', '2014-12-01', '2015-08-01'),
(36, 'Андрей', 89288411885, '11@ff36', 'Покупатель', 'dv35adsc103', '2014-12-01', '2015-08-01'),
(37, 'Михаил', 89288411896, '11@ff37', 'Продавец', 'dv35adsc104', '2014-12-01', '2015-08-01'),
(38, 'Татьяна', 89288411907, '11@ff38', 'Покупатель', 'dv35adsc105', '2014-12-01', '2015-08-01'),
(39, 'Елена', 89288411918, '11@ff39', 'Продавец', 'dv35adsc106', '2014-12-01', '2015-08-01'),
(40, 'Ольга', 89288411929, '11@ff40', 'Покупатель', 'dv35adsc107', '2014-12-01', '2015-08-01'),
(41, 'Сергей', 89288411940, '11@ff41', 'Продавец', 'dv35adsc108', '2014-12-01', '2015-08-01'),
(42, 'Светлана', 89288411951, '11@ff42', 'Покупатель', 'dv35adsc109', '2014-12-01', '2015-08-01'),
(43, 'Вячеслав', 89288411962, '11@ff43', 'Продавец', 'dv35adsc110', '2014-12-01', '2015-08-01'),
(44, 'Юрий', 89288411973, '11@ff44', 'Покупатель', 'dv35adsc111', '2014-12-01', '2015-08-01'),
(45, 'Петр', 89288411984, '11@ff45', 'Продавец', 'dv35adsc112', '2014-12-01', '2015-08-01'),
(46, 'Андрей', 89288411995, '11@ff46', 'Покупатель', 'dv35adsc113', '2014-12-01', '2015-08-01'),
(47, 'Михаил', 89288412006, '11@ff47', 'Продавец', 'dv35adsc114', '2014-12-01', '2015-08-01'),
(48, 'Татьяна', 89288412017, '11@ff48', 'Покупатель', 'dv35adsc115', '2014-12-01', '2015-08-01'),
(49, 'Елена', 89288412028, '11@ff49', 'Продавец', 'dv35adsc116', '2014-12-01', '2015-08-01'),
(50, 'Ольга', 89288412039, '11@ff50', 'Покупатель', 'dv35adsc117', '2014-12-01', '2015-08-01'),
(51, 'Сергей', 89288412050, '11@ff51', 'Продавец', 'dv35adsc118', '2014-12-01', '2015-08-01'),
(52, 'Светлана', 89288412061, '11@ff52', 'Покупатель', 'dv35adsc119', '2014-12-01', '2015-08-01'),
(53, 'Вячеслав', 89288412072, '11@ff53', 'Продавец', 'dv35adsc120', '2014-12-01', '2015-08-01'),
(54, 'Юрий', 89288412083, '11@ff54', 'Покупатель', 'dv35adsc121', '2014-12-01', '2015-08-01'),
(55, 'Петр', 89288412094, '11@ff55', 'Продавец', 'dv35adsc122', '2014-12-01', '2015-08-01'),
(56, 'Андрей', 89288412105, '11@ff56', 'Покупатель', 'dv35adsc123', '2014-12-01', '2015-08-01'),
(57, 'Андрей', 89288412116, '11@ff57', 'Продавец', 'dv35adsc124', '2014-12-01', '2015-08-01'),
(58, 'Михаил', 89288412127, '11@ff58', 'Покупатель', 'dv35adsc125', '2014-12-01', '2015-08-01'),
(59, 'Татьяна', 89288412138, '11@ff59', 'Продавец', 'dv35adsc126', '2014-12-01', '2015-08-01'),
(60, 'Елена', 89288412149, '11@ff60', 'Покупатель', 'dv35adsc127', '2014-12-01', '2015-08-01'),
(61, 'Ольга', 89288412160, '11@ff61', 'Продавец', 'dv35adsc128', '2014-12-01', '2015-08-01'),
(62, 'Сергей', 89288412171, '11@ff62', 'Покупатель', 'dv35adsc129', '2014-12-01', '2015-08-01'),
(63, 'Светлана', 89288412182, '11@ff63', 'Продавец', 'dv35adsc130', '2014-12-01', '2015-08-01'),
(64, 'Вячеслав', 89288412193, '11@ff64', 'Покупатель', 'dv35adsc131', '2014-12-01', '2015-08-01'),
(65, 'Юрий', 89288412204, '11@ff65', 'Продавец', 'dv35adsc132', '2014-12-01', '2015-08-01'),
(66, 'Петр', 89288412215, '11@ff66', 'Покупатель', 'dv35adsc133', '2014-12-01', '2015-08-01'),
(67, 'Андрей', 89288412226, '11@ff67', 'Продавец', 'dv35adsc134', '2014-12-01', '2015-08-01'),
(68, 'Михаил', 89288412237, '11@ff68', 'Покупатель', 'dv35adsc135', '2014-12-01', '2015-08-01'),
(69, 'Андрей', 89288412248, '11@ff69', 'Продавец', 'dv35adsc136', '2014-12-01', '2015-08-01'),
(70, 'Михаил', 89288412259, '11@ff70', 'Покупатель', 'dv35adsc137', '2014-12-01', '2015-08-01'),
(71, 'Татьяна', 89288412270, '11@ff71', 'Продавец', 'dv35adsc138', '2014-12-01', '2015-08-01'),
(72, 'Елена', 89288412281, '11@ff72', 'Покупатель', 'dv35adsc139', '2014-12-01', '2015-08-01'),
(73, 'Ольга', 89288412292, '11@ff73', 'Продавец', 'dv35adsc140', '2014-12-01', '2015-08-01'),
(74, 'Сергей', 89288412303, '11@ff74', 'Покупатель', 'dv35adsc141', '2014-12-01', '2015-08-01'),
(75, 'Светлана', 89288412314, '11@ff75', 'Продавец', 'dv35adsc142', '2014-12-01', '2015-08-01'),
(76, 'Вячеслав', 89288412325, '11@ff76', 'Покупатель', 'dv35adsc143', '2014-12-01', '2015-08-01'),
(77, 'Юрий', 89288412336, '11@ff77', 'Продавец', 'dv35adsc144', '2014-12-01', '2015-08-01'),
(78, 'Андрей', 89288412347, '11@ff78', 'Покупатель', 'dv35adsc145', '2014-12-01', '2015-08-01'),
(79, 'Михаил', 89288412358, '11@ff79', 'Продавец', 'dv35adsc146', '2014-12-01', '2015-08-01'),
(80, 'Татьяна', 89288412369, '11@ff80', 'Покупатель', 'dv35adsc147', '2014-12-01', '2015-08-01'),
(81, 'Елена', 89288412380, '11@ff81', 'Продавец', 'dv35adsc148', '2014-12-01', '2015-08-01'),
(82, 'Ольга', 89288412391, '11@ff82', 'Покупатель', 'dv35adsc149', '2014-12-01', '2015-08-01'),
(83, 'Сергей', 89288412402, '11@ff83', 'Продавец', 'dv35adsc150', '2014-12-01', '2015-08-01'),
(84, 'Андрей', 89288412413, '11@ff84', 'Покупатель', 'dv35adsc151', '2014-12-01', '2015-08-01'),
(85, 'Михаил', 89288412424, '11@ff85', 'Продавец', 'dv35adsc152', '2014-12-01', '2015-08-01'),
(86, 'Татьяна', 89288412435, '11@ff86', 'Покупатель', 'dv35adsc153', '2014-12-01', '2015-08-01'),
(87, 'Елена', 89288412446, '11@ff87', 'Продавец', 'dv35adsc154', '2014-12-01', '2015-08-01'),
(88, 'Ольга', 89288412457, '11@ff88', 'Покупатель', 'dv35adsc155', '2014-12-01', '2015-08-01'),
(89, 'Сергей', 89288412468, '11@ff89', 'Продавец', 'dv35adsc156', '2014-12-01', '2015-08-01'),
(90, 'Светлана', 89288412479, '11@ff90', 'Покупатель', 'dv35adsc157', '2014-12-01', '2015-08-01'),
(91, 'Андрей', 89288412490, '11@ff91', 'Продавец', 'dv35adsc158', '2014-12-01', '2015-08-01'),
(92, 'Михаил', 89288412501, '11@ff92', 'Покупатель', 'dv35adsc159', '2014-12-01', '2015-08-01'),
(93, 'Татьяна', 89288412512, '11@ff93', 'Продавец', 'dv35adsc160', '2014-12-01', '2015-08-01'),
(94, 'Елена', 89288412523, '11@ff94', 'Покупатель', 'dv35adsc161', '2014-12-01', '2015-08-01'),
(95, 'Ольга', 89288412534, '11@ff95', 'Продавец', 'dv35adsc162', '2014-12-01', '2015-08-01'),
(96, 'Сергей', 89288412545, '11@ff96', 'Покупатель', 'dv35adsc163', '2014-12-01', '2015-08-01'),
(97, 'Светлана', 89288412556, '11@ff97', 'Продавец', 'dv35adsc164', '2014-12-01', '2015-08-01'),
(98, 'Вячеслав', 89288412567, '11@ff98', 'Покупатель', 'dv35adsc165', '2014-12-01', '2015-08-01'),
(99, 'Юрий', 89288412578, '11@ff99', 'Продавец', 'dv35adsc166', '2014-12-01', '2015-08-01'),
(100, 'Андрей', 89288412589, '11@ff100', 'Покупатель', 'dv35adsc167', '2014-12-01', '2015-08-01');

 -- 5. Создаем таблицы  объектов недвижимости
/* ************************************************************************** */

-- -----------------------------------------------------------------
 -- 5.1 Создаем таблицу стран
-- ----------------------------------------------------------------- 
DROP TABLE IF EXISTS country ;
CREATE TABLE country (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255),
	UNIQUE unique_name(name(10))
) COMMENT = 'Страна';
 
INSERT INTO country VALUES  

  (NULL, 'Россия'),
  (NULL, 'Беларусь'),
  (NULL, 'Украина'),
  (NULL, 'Казахстан'),
  (NULL, 'Грузия');
 
 
 -- -----------------------------------------------------------------
 -- 5.2 Создаем таблицу областей
-- -----------------------------------------------------------------

 DROP TABLE IF EXISTS region ;
CREATE TABLE region (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255),
	UNIQUE unique_name(name(10)),
	
    country_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'страна', 
	CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES country (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE	
) COMMENT = 'Области, регионы' ;
 
INSERT INTO region VALUES  

  (NULL, 'Московская область', 1),
  (NULL, 'Ленинградская область', 1),
  (NULL, 'Киевская область', 3),
  (NULL, 'Минская область', 2),
  (NULL, 'АР Аджария', 5);
 
 
-- ----------------------------------------------------------------- 
 -- 5.3 Создаем таблицу Населенные пункты 
-- -----------------------------------------------------------------  
DROP TABLE IF EXISTS settlements ;
CREATE TABLE settlements (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255) COMMENT 'Населенный пункт',
	
	region_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'область', 
	CONSTRAINT region_id FOREIGN KEY (region_id) REFERENCES region (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE
) COMMENT = 'Населенные пункты' ;
 
INSERT INTO settlements VALUES 

  (NULL, 'г.Москва', 1),
  (NULL, 'г.Санкт-Петербург', 2),
  (NULL, 'г.Киев', 3),
  (NULL, 'г.Минск', 4),
  (NULL, 'г.Батуми', 5);
 
-- -----------------------------------------------------------------
 -- 5.4 Создаем таблицу Адрес
-- -----------------------------------------------------------------
 DROP TABLE IF EXISTS adress ;
CREATE TABLE adress (
	id SERIAL PRIMARY KEY, 
	street VARCHAR(255) COMMENT 'Улица',
	hause VARCHAR(80) COMMENT 'Номер дома, корпус',  
	
	settlements_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Населенный пункт', 
	CONSTRAINT settlements_id FOREIGN KEY (settlements_id) REFERENCES settlements (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE
) COMMENT = 'Адрес' ;
 

-- -----------------------------------------------------------------
 --  4. Создаем таблицу Информации по объекту недвижимости
-- -----------------------------------------------------------------
 
-- SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS inf_real ;
-- SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE inf_real (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(255) COMMENT 'Название объекта - оглавление',
	description VARCHAR(500) COMMENT 'Описание объекта',
	price  DECIMAL (13,2) COMMENT 'Цена за объект',
	currency  VARCHAR(40) COMMENT 'Валюта',
	total_area  DECIMAL (10,2) DEFAULT NULL COMMENT 'Площадь общая, м2',
	living_area  DECIMAL (10,2) DEFAULT NULL COMMENT  'Площадь жилая, м2',
	kitchen_area DECIMAL (10,2) DEFAULT NULL COMMENT 'Площадь кухни, м2',
	land_area  DECIMAL (10,2) DEFAULT NULL COMMENT 'Площадь зем.уч., соток',
	created_at DATETIME COMMENT 'Дата создания сделки', 
    sales_at DATETIME DEFAULT NULL COMMENT 'Дата закрытия сделки (продажи, сдачи в аренду)', 
    property VARCHAR(100) COMMENT 'Форма собственности',
  
	
	foto_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Фото', 
	CONSTRAINT foto_id FOREIGN KEY (foto_id) REFERENCES foto (id)	
	ON DELETE SET NULL ON UPDATE CASCADE,	
	
	payment_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Способ оплаты', 
	CONSTRAINT payment_id FOREIGN KEY (payment_id) REFERENCES payment (id)	
	ON DELETE SET NULL ON UPDATE CASCADE,
	
	adress_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Адрес', 
	CONSTRAINT adress_id FOREIGN KEY (adress_id) REFERENCES adress (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	settlements_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'населенный пункт', 
	CONSTRAINT settlements_id2 FOREIGN KEY (settlements_id) REFERENCES settlements (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	type_transactions_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Вид сделки', 
	CONSTRAINT type_transactions_id FOREIGN KEY (type_transactions_id) REFERENCES type_transactions (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	users_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Продавец', 
	CONSTRAINT users_id FOREIGN KEY (users_id) REFERENCES users (id)	
	ON DELETE CASCADE  ON UPDATE CASCADE,
	
	types_real_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Вид объекта', 
	CONSTRAINT types_real_id FOREIGN KEY (types_real_id) REFERENCES types_real (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE,
	
	category_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Категория объекта', 
	CONSTRAINT category_id6 FOREIGN KEY (category_id) REFERENCES category (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE
	
)  COMMENT = 'Информация об объектах';



-- SELECT * from inf_real 

-- ----------------------------------------------------------------
-- 5.5 Таблица характеристик 
-- -----------------------------------------------------------------
-- SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS specification ;
-- SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE specification (
    
    inf_real_id bigint unsigned NOT NULL COMMENT 'привязка характеристик по id объекта', 
    PRIMARY KEY (inf_real_id),
    key inf_real_id (inf_real_id),
    CONSTRAINT inf_real_id3 FOREIGN KEY (inf_real_id) 
    REFERENCES inf_real (id) ON UPDATE CASCADE ON DELETE CASCADE,
	
	k_number VARCHAR(50) COMMENT 'кадастровый номер объекта',
	UNIQUE unique_k_number(k_number),
	rooms int(10) DEFAULT NULL COMMENT 'количество комнат',
    floors int(10) DEFAULT NULL COMMENT 'этажность',
    floor1 int(10) DEFAULT NULL COMMENT 'этаж',
    f_floor VARCHAR(3) DEFAULT NULL COMMENT 'первый этаж',
    l_floor VARCHAR(3) DEFAULT NULL COMMENT 'последний этаж',
    balcony VARCHAR(5) DEFAULT NULL COMMENT 'лоджия/балкон', 
    species VARCHAR(50) DEFAULT NULL COMMENT 'видовые ',
    playground VARCHAR(50) DEFAULT NULL COMMENT 'детская площадка', 
    parking VARCHAR(50) DEFAULT NULL COMMENT 'парковка', 
    y_construction VARCHAR(50) DEFAULT NULL COMMENT 'год постройки', 
    t_construction VARCHAR(50) DEFAULT NULL COMMENT 'тип строительства', 
    renovation VARCHAR(50) DEFAULT NULL COMMENT 'ремонт', 
    furniture VARCHAR(50) DEFAULT NULL COMMENT 'мебель', 
    heating VARCHAR(50) COMMENT 'тип отопления', 
    water_type VARCHAR(50) DEFAULT NULL COMMENT 'тип водоснабжения', 
    bathrooms VARCHAR(50) DEFAULT NULL COMMENT 'количество санузлов', 
    shared_bathr VARCHAR(50) DEFAULT NULL COMMENT 'санузел совмещенный', 
    complex VARCHAR(50) DEFAULT NULL COMMENT 'жилищный комплекс', 
    property_class VARCHAR(50) DEFAULT NULL COMMENT  'класс недвижимости', 
    under_const VARCHAR(50) DEFAULT NULL COMMENT 'стадия строительства ', 
    object_status VARCHAR(50) DEFAULT NULL COMMENT 'статус объекта', 
    gas VARCHAR(50) DEFAULT NULL COMMENT 'газ', 
    electricity VARCHAR(50) DEFAULT NULL COMMENT  'электричество', 
    water VARCHAR(50) DEFAULT NULL COMMENT 'вода ', 
    garage VARCHAR(50) DEFAULT NULL COMMENT 'гараж', 
    assignment_o VARCHAR(50) DEFAULT NULL COMMENT 'назначение объекта'
 
	/*flats_id  BIGINT UNSIGNED  COMMENT 'Квартиры', 
	CONSTRAINT flats_id  FOREIGN KEY (flats_id) REFERENCES category (id)	
	ON DELETE CASCADE ON UPDATE CASCADE	*/
) COMMENT = ' Характеристики ОН' ;


-- -----------------------------------------------------------------
 -- 5.6 Создаем таблицу Инфраструктура объектов недвижимости 
-- ----------------------------------------------------------------- 

-- SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS infrastructure ;
-- SET FOREIGN_KEY_CHECKS = 1;
CREATE TABLE infrastructure (

	inf_real_id bigint unsigned NOT NULL COMMENT 'привязка характеристик по id объекта', 
    PRIMARY KEY (inf_real_id),
    key inf_real_id (inf_real_id),
    CONSTRAINT inf_real_id8 FOREIGN KEY (inf_real_id) 
    REFERENCES inf_real (id) ON UPDATE CASCADE ON DELETE CASCADE,
    
	shop VARCHAR(5) COMMENT 'магазин рядом', 
    kindergarten VARCHAR(5) COMMENT 'детсад рядом', 
    shcool VARCHAR(5) COMMENT 'школа рядом', 
    centr VARCHAR(5) COMMENT 'центр города рядом', 
    bich VARCHAR(5) COMMENT 'пляж рядом', 
    metro1 VARCHAR(5) COMMENT 'метро рядом', 
    see VARCHAR(5) COMMENT 'водоем рядом', 
    park VARCHAR(5) COMMENT 'парк рядом', 
    forests VARCHAR(5) COMMENT 'лес рядом', 
    company VARCHAR(5) COMMENT 'градостроительные предприятия', 
    mountains VARCHAR(5) COMMENT 'горы рядом', 
    road VARCHAR(5) COMMENT  'дороги, подъездные пути' 
    
    /*category_id  BIGINT UNSIGNED  COMMENT 'Категории', 
	CONSTRAINT category_id7 FOREIGN KEY (category_id) REFERENCES category (id)	
	ON DELETE SET NULL ON UPDATE CASCADE*/
	
) COMMENT = 'Наличие объектов инфраструктуры' ;



-- -----------------------------------------------------------------
 -- 10. Создаем Таблицы Внешние факторы, влияющие на рынок недвижимости
-- -----------------------------------------------------------------

-- категории факторов
DROP TABLE IF EXISTS cat_factor ;
CREATE TABLE cat_factor (
	id SERIAL PRIMARY KEY,
	name  VARCHAR(100) COMMENT 'Категория факторов',
	UNIQUE unique_name(name(10)),
	cfcnt FLOAT UNSIGNED DEFAULT 1 COMMENT 'Коэффициент влияния'
 ) COMMENT = 'Категории внешних факторов, влияющих на рынок недвижимости' ;


INSERT INTO cat_factor VALUES  

  (NULL, 'Политические факторы', 0.95 ),
  (NULL, 'Муниципальные факторы', 1 ),
  (NULL, 'Экономические факторы', 0.9),
  (NULL, 'Демографические факторы', 0.97),
  (NULL, 'Социально-культурные факторы', 1.2),
  (NULL, 'Научно-технические факторы', 1.1),
  (NULL, 'Природно-географические факторы', 3),
  (NULL, 'Урбанистические факторы', 3),
  (NULL, 'Форс-мажоры', 1 ), -- в зависимости от глубины (стихийные бедствия, пандемия, военные действия)
  (NULL, 'Информационные факторы', 1 )  -- имеют короткий период влияния, но в зависимости от информации- понижение или повышение до вливания новой
 ;

-- SELECT * FROM cat_factor;

-- фактические события
DROP TABLE IF EXISTS out_factor ;
CREATE TABLE out_factor (
	id SERIAL PRIMARY KEY,
	name  VARCHAR(100) COMMENT 'Внешний фактор',
	description VARCHAR(255) COMMENT 'Описание фактора',
	Beginning DATETIME COMMENT 'Дата начала фактора', 
	end_period DATETIME COMMENT 'Дата окончания фактора',
	    
	cat_factor_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Категория объекта', 
	CONSTRAINT cat_factor_id FOREIGN KEY (cat_factor_id) REFERENCES cat_factor (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE,
	
	cfcnt FLOAT UNSIGNED DEFAULT 1 COMMENT 'Поправочный коэффициент глубины самого фактора внутри категории' -- т.к.фактор фактору рознь. Если глубина средняя - то коэф.1
) COMMENT = 'Внешние факторы, влияющие на рынок недвижимости' ;

INSERT INTO out_factor VALUES  
  (NULL, 'Санкции', 'привели к падению рубля', '2021-04-01', now(), 1, 1),
  (NULL, 'Пандемия', 'повышение спроса на загородную недвижимость', '2020-02-28', now(), 9, 1.2),
  (NULL, 'Олимпиада', 'привело к инвестированию в Сочи', '2014-04-01', now(), 5, 1.1),
  (NULL, 'Новость о планах развития региона', 'повышение спроса на недвижимость в этом районе', '2016-08-11', '2017-09-11', 10, 1.05),
  (NULL, 'Мараторий на строительство в Геленджике', 'привел к повышению стоимости имеющегося жилья', '2020-01-01', now(), 2, 1.3)
 ;

-- ------------------------------- Сводные таблицы - Представления. ------------------------------------


-- ************************* Таблица. Структура рынка недвижимости **************************************
-- Структура рынка спроса на ОН (по купленной недвижимости) = Предпочтения покупателей по ОН. за весь период

DROP VIEW IF EXISTS structure_on;
CREATE OR REPLACE VIEW structure_on (id, types_real, amount, str_deals, sum_price, str_sum, ap_price )
AS SELECT tr.id, tr.name,  -- Вид объекта недвижимости
	COUNT(*), -- Количество сделок по видам
	(count(*)/(SELECT COUNT(*) FROM inf_real ir)* 100), -- Структура сделок по видам, %
	(sum(ir.price)), -- Сумма сделок по видам, руб
	(sum(ir.price)/(SELECT sum(price) FROM inf_real ir ) * 100), -- Структура выручки по сделкам с недвижимостью, %
	(sum(ir.price)/COUNT(*)) -- Среднерыночная цена ОН, руб.

FROM types_real tr JOIN inf_real ir ON ir.types_real_id = tr.id WHERE ir.sales_at IS NOT NULL -- отборка именно проданной недвижимости
GROUP BY tr.name WITH ROLLUP;

-- SELECT * FROM  structure_on; 



-- *************************  Анализ предложения/цен по выбранному региону **************************************
-- Среднерыночные цены (по всем предложениям, а не по проданным) на недвижимость по видам по выбранному населенному пункту, в т.ч. за м2. 

-- SELECT * FROM settlements s; -- возьмем  г.Москва - id =1

DROP VIEW IF EXISTS price_on;
CREATE OR REPLACE VIEW price_on (id, types_real , amount, ap_price, price_m2)
AS 
SELECT 
	tr.id id, tr.name types_real ,    -- Вид объекта недвижимости
	(COUNT(*)) amount,               -- Количество ОН
	(sum(ir.price)/COUNT(*)) ap_price ,  -- Среднерыночная цена ОН, руб.
	(ir.price / ir.total_area) price_m2  -- Среднерыночная цена 1 м2 площади, руб.
FROM types_real tr JOIN inf_real ir ON ir.types_real_id = tr.id 
WHERE ir.adress_id IN (
	SELECT a.id FROM adress a JOIN settlements s ON a.settlements_id = s.id WHERE s.id = 1  -- выбираем  г.Москва - id =1
) GROUP BY tr.name ORDER BY tr.id;


-- та же таблица с итоговой строкой - т.е. с показателями итого по региону
 
DROP VIEW IF EXISTS price_on1;
CREATE OR REPLACE VIEW price_on1 (id, types_real , amount, ap_price, price_m2)
AS 
SELECT * FROM price_on 
UNION 
SELECT 'x' id, 'TOTAL' types_real , COUNT(*) amount , (sum(ap_price)/COUNT(*)) ap_price ,   -- строка в целом по региону
	(sum(price_m2)/COUNT(*)) price_m2  FROM price_on;

-- SELECT * FROM price_on1 ;
 


/* ************************* Таблица Объектов недвижимости в продаже ***************** */


DROP VIEW IF EXISTS object_f;
CREATE OR REPLACE VIEW object_f (id, types_real , price, currency, total_area, price_m2,  
	rooms, floors, floor1, f_floor, l_floor, balcony, species, 
	playground, parking, y_construction, t_construction, renovation, furniture, heating, water_type, bathrooms, shared_bathr, 
	complex, property_class, under_const, object_status, gas, electricity, water, garage,  assignment_o,
	name, description, living_area, kitchen_area , created_at, property,
	shop, kindergarten, shcool
	)
AS SELECT 
	ir.id, ir.types_real_id  , ir.price, ir.currency, ir.total_area, ir.price / ir.total_area , 
	sf.rooms, sf.floors, sf.floor1, sf.f_floor, sf.l_floor, sf.balcony, species, 
	sf.playground, sf.parking, sf.y_construction, sf.t_construction, sf.renovation, sf.furniture, sf.heating, sf.water_type, sf.bathrooms, sf.shared_bathr, 
	sf.complex, sf.property_class, sf.under_const, sf.object_status, sf.gas, sf.electricity, sf.water, sf.garage,  sf.assignment_o,
	ir.name, ir.description, ir.living_area, ir.kitchen_area , ir.created_at, ir.property,
	i.shop, i.kindergarten, i.shcool
FROM inf_real ir 
JOIN specification sf ON sf.inf_real_id = ir.id 
JOIN infrastructure i ON ir.id = i.inf_real_id  
WHERE ir.sales_at IS NULL;


-- SELECT * FROM object_f ;


-- ------------------ Вычисление коэффициентов привлекательности объектов недвижимости по характеристикам :-----------------------


DROP VIEW IF EXISTS attractiveness;
CREATE OR REPLACE VIEW attractiveness (id, at_cfcnt) 
AS SELECT inf_real_id , (
	IF(f_floor = 'да', 0.97, 1) *   -- (перемножаем все коэффициенты, получаем один)
	IF(l_floor = 'да', 0.95, 1) *
	IF(balcony = 'есть', 0.95, 1) *
	IF(species = 'парк', 1.01, IF(species = 'лес', 1.03, IF(species = 'горы', 1.1, IF(species = 'водоем', 1.3, 1)))) *
	IF(playground = 'есть', 1.005, 1) *
	IF(y_construction < (current_date()- INTERVAL 20 YEAR) , 0.85, 1) *
	IF(renovation = 'стандартный', 1.15, IF(renovation = 'евроремонт', 1.3, 1)) *
	IF(furniture = 'есть', 1.1, 1) *
	IF(shared_bathr = 'да', 0.96, 1) *
	IF(property_class = 'комфорт', 1.1, 1) *
	IF(property_class = 'элит', 1.3, 1) *
	IF(under_const = 'строительство', 0.7, 1) *
	IF(object_status = 'новостройка', 1.15, 1) 
	
) FROM specification s WITH CHECK OPTION; 

 -- SELECT * FROM attractiveness;

-- ------------------ Вычисление коэффициентов привлекательности ОН по инфраструктуре:

-- SELECT * FROM infrastructure; 
-- DESCRIBE infrastructure; 

DROP VIEW IF EXISTS attractiveness_inf;
CREATE OR REPLACE VIEW attractiveness_inf (id, at_cfcnt)
AS SELECT inf_real_id ,  ( 
  IF(shop = 'да', 1.01, 1) *  -- (перемножаем все коэффициенты, получаем один)
  IF(kindergarten = 'да', 1.01, 1) *
  IF(shcool = 'да', 1.01, 1) *
  IF(centr = 'да', 1.1, 1) *
  IF(bich = 'да', 1.5, 1) *
  IF(metro1 = 'да', 1.1, 1) *
  IF(see = 'да', 1.3, 1) *
  IF(park = 'да' , 1.005, 1) *
  IF(forests = 'да', 1.001, 1) *
  IF(mountains = 'да', 1.1, 1) *
  IF(road = 'нет', 0.9, 1) 
) FROM infrastructure i WITH CHECK OPTION; 

 -- SELECT * FROM attractiveness_inf;


-- --------------------------- Калькулятор стоимости ОН ---------------------------------

-- коэффициент внешних факторов (в рамках КП внешние факторы учитывать не будем, поэтому коэф.=1). Если применить этот коэф. -то цена откорректируется соответственно.
SET @cfcnt_o := 1 ;

SET @id := 1; -- переменная ID - для этого id и будут считаться значения

-- функция Калькулятор стоимости ОН
delimiter //
//
DROP FUNCTION  IF EXISTS f_calcul//
CREATE FUNCTION  f_calcul ()
RETURNS float DETERMINISTIC
BEGIN
	
	-- объявляем переменную: средняя цена продажи за м2 на однотипные ОН по населенному пункту (сумма/площадь)
	SELECT sum(ir.price) / sum(ir.total_area) FROM 
	inf_real ir WHERE ir.category_id = (
	SELECT ir2.category_id FROM inf_real ir2 WHERE ir2.id = @id
	) AND ir.settlements_id = (
	SELECT ir3.settlements_id FROM inf_real ir3 WHERE ir3.id = @id)
	INTO @ap_pr_m2;

	-- вывести: ср.цена * общая площадь * коэф.характ. * коэф.инфр.* коэф.внеш факторов
	SELECT @ap_pr_m2 * ir.total_area *  a.at_cfcnt * ai.at_cfcnt * @cfcnt_o
	FROM inf_real ir JOIN attractiveness a ON ir.id = a.id 
	JOIN attractiveness_inf ai ON ir.id = ai.id 
	WHERE ir.id = @id INTO  @new_price;  
	
	RETURN @new_price;
END//

delimiter ;
;

SET @id := 19; -- переменная ID - для этого id и будут считаться значения
-- select @ap_pr_m2; - средняя цена продажи за м2
-- SElECT @new_price; - расчетная стоимость ОН
-- SElECT f_calcul ();



-- ------------------------ Триггер - счетчик сделок за сегодня -----------------------------------------
SET @total_deal := 0;

DROP TRIGGER IF EXISTS inf_real_c;

delimiter //
//
CREATE TRIGGER inf_real_c 
AFTER INSERT 
ON inf_real FOR EACH ROW
BEGIN	
	SELECT COUNT(*) INTO  @total_deal FROM inf_real WHERE sales_at = CURRENT_DATE(); -- считаем, сколько сегодня продали объектов (считаем инсерты)
END//

delimiter ;

-- проверим создание триггера:
-- SHOW TRIGGERS;

-- Проверим
-- SELECT  @total_deal;  


-- INSERT INTO inf_real VALUES (null,'blanditiis','Hic iste dolorem voluptatibus aut eum voluptas provident. Nulla necessitatibus qui quo dolores cupiditate. Sed nostrum est sit quia vitae enim.',62857584.00,'руб.',113.00,18.00,23.00,1.00,'2016-08-06 20:11:29', CURRENT_DATE (),' собственник',1,1,1,1,1,101,1,1);
 
-- Проверим теперь
-- SELECT  @total_deal;



/********************************************* КОНЕЦ ***************************************************************



/*************************************** ДОПОЛНИТЕЛЬНО ***********************************************/

/*

-- ------------------------------ Таблица 11.  ЗАПРОСЫ ПОКУПАТЕЛЕЙ (Представление) ----------------------

SET @new_var := NULL; -- Формируются новые предложения по запросу покупателя

DROP VIEW IF EXISTS buyer_requests ;
CREATE OR REPLACE VIEW buyer_requests (id, name, types_real_id , price, currency, rooms, total_area, land_area, 
property, payment, adress, type_transactions, var, new_var -- var- это подбор подходящих вариантов по запросу
) AS SELECT
u.id, u.name, ir.types_real_id, ir.price, ir.currency, s.rooms, ir.total_area, ir.land_area, 
ir.property, ir.payment_id, ir.adress_id, ir.type_transactions_id, 
(SELECT ir2.id FROM inf_real ir2 JOIN users u2 ON u2.id = ir2.users_id WHERE u2.status = 'Продавец'  AND ir2.types_real_id = ir.types_real_id),
@new_var  
FROM 
users u JOIN inf_real ir ON u.id = ir.users_id 
JOIN specification s ON ir.id = s.inf_real_id  
WHERE u.status = 'Покупатель';

-- ------------------------ Триггер - Добавление новых предложений по запросам покупателей ( в реальности - отправить сообщ на почту -----------------------------------------
-- При появлении подходящих предложений - добавляется/обновляется значение @new_var в личный кабинет покупателя

DROP TRIGGER IF EXISTS requests;

delimiter //
//
CREATE TRIGGER requests 
AFTER INSERT ON inf_real 
FOR EACH ROW
BEGIN
		SELECT ir.id INTO @new_var FROM inf_real ir
			JOIN users u ON u.id = ir.users_id 
			JOIN buyer_requests br ON br.types_real_id = ir.types_real_id WHERE u.status = 'Продавец'   -- берем тип ОН	из запроса	
			AND max(ir.id);
END//

delimiter ;

-- проверим создание триггера:
-- SHOW TRIGGERS;

-- Проверим
-- SELECT  @new_var ;  

INSERT INTO users VALUES (110, 'Vasja', 80291653500, 'df@dvd', 'Продавец', '25dcd', current_date(), current_date() );  
INSERT INTO inf_real VALUES (null,'квартира','красивая просторная',7000000.00,'руб.',80.00,64.00,23.00,0.00,'2016-08-06 20:11:29', CURRENT_DATE (),' собственник',15,1,10,1,1,110,1,1);
 


-- SET FOREIGN_KEY_CHECKS = 0;

-- SET FOREIGN_KEY_CHECKS = 1;



-- -------------------- Данные, которым больше 2 лет, перемещаются в архивную таблицу ----------------------------------

/*  Вот хотела сделать так, но , видимо, не поддерживаются такие команды - вставка значений через селект и удаление через Join
 * Подскажите, пожалуйста, как это делают. Через перебор курсором- это наверно очень энергоемко с таким количеством переменных.  
 * Можно, конечно, не все значения архивировать. Но все-таки.
 * Как сделать эту операцию?
 *
 
-- создаем архивную таблицу

DROP TABLE IF EXISTS arh_deals;
CREATE TABLE arh_deals (
	id BIGINT,  -- сюда перемещаем информацию об ОН
	name VARCHAR(255) COMMENT 'Название объекта - оглавление',
	description VARCHAR(500) COMMENT 'Описание объекта',
	price  DECIMAL (13,2) COMMENT 'Цена за объект',
	currency  VARCHAR(40) COMMENT 'Валюта',
	total_area  DECIMAL (10,2) COMMENT 'Площадь общая, м2',
	living_area  DECIMAL (10,2) COMMENT  'Площадь жилая, м2',
	kitchen_area DECIMAL (10,2)  COMMENT 'Площадь кухни, м2',
	land_area  DECIMAL (10,2)  COMMENT 'Площадь зем.уч., соток',
	created_at DATETIME COMMENT 'Дата создания сделки', 
    sales_at DATETIME  COMMENT 'Дата закрытия сделки (продажи, сдачи в аренду)', 
    property VARCHAR(100) COMMENT 'Форма собственности',
    
    foto_id BIGINT UNSIGNED COMMENT 'Фото',  -- также перемещаем фото
	metadata LONGTEXT , 
  
	payment_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Способ оплаты', 
	CONSTRAINT payment_id FOREIGN KEY (payment_id) REFERENCES payment (id)	
	ON DELETE SET NULL ON UPDATE CASCADE,
	
	adress_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Адрес', 
	CONSTRAINT adress_id FOREIGN KEY (adress_id) REFERENCES adress (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	settlements_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'населенный пункт', 
	CONSTRAINT settlements_id2 FOREIGN KEY (settlements_id) REFERENCES settlements (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	type_transactions_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Вид сделки', 
	CONSTRAINT type_transactions_id FOREIGN KEY (type_transactions_id) REFERENCES type_transactions (id)	
	ON DELETE RESTRICT  ON UPDATE CASCADE,
	
	users_id BIGINT UNSIGNED DEFAULT NULL COMMENT 'Продавец', 
	CONSTRAINT users_id FOREIGN KEY (users_id) REFERENCES users (id)	
	ON DELETE CASCADE  ON UPDATE CASCADE,
	
	types_real_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Вид объекта', 
	CONSTRAINT types_real_id FOREIGN KEY (types_real_id) REFERENCES types_real (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE,
	
	category_id  BIGINT UNSIGNED DEFAULT NULL COMMENT 'Категория объекта', 
	CONSTRAINT category_id6 FOREIGN KEY (category_id) REFERENCES category (id)	
	ON DELETE RESTRICT ON UPDATE CASCADE,
	
	k_number VARCHAR(50) COMMENT 'кадастровый номер объекта',  -- также переносим характеристики ОН
	UNIQUE unique_k_number(k_number),
	rooms int(10) COMMENT 'количество комнат',
    floors int(10) COMMENT 'этажность',
    floor1 int(10) COMMENT 'этаж',
    f_floor VARCHAR(3) COMMENT 'первый этаж',
    l_floor VARCHAR(3) COMMENT 'последний этаж',
    balcony VARCHAR(5) COMMENT 'лоджия/балкон', 
    species VARCHAR(50) COMMENT 'видовые ',
    playground VARCHAR(50) COMMENT 'детская площадка', 
    parking VARCHAR(50) COMMENT 'парковка', 
    y_construction VARCHAR(50) COMMENT 'год постройки', 
    t_construction VARCHAR(50) COMMENT 'тип строительства', 
    renovation VARCHAR(50) COMMENT 'ремонт', 
    furniture VARCHAR(50) COMMENT 'мебель', 
    heating VARCHAR(50) COMMENT 'тип отопления', 
    water_type VARCHAR(50) COMMENT 'тип водоснабжения', 
    bathrooms VARCHAR(50) COMMENT 'количество санузлов', 
    shared_bathr VARCHAR(50) COMMENT 'санузел совмещенный', 
    complex VARCHAR(50) COMMENT 'жилищный комплекс', 
    property_class VARCHAR(50) COMMENT  'класс недвижимости', 
    under_const VARCHAR(50) COMMENT 'стадия строительства ', 
    object_status VARCHAR(50) COMMENT 'статус объекта', 
    gas VARCHAR(50) COMMENT 'газ', 
    electricity VARCHAR(50) COMMENT  'электричество', 
    water VARCHAR(50) COMMENT 'вода ', 
    garage VARCHAR(50) COMMENT 'гараж', 
    assignment_o VARCHAR(50) COMMENT 'назначение объекта',
    
    shop VARCHAR(5) COMMENT 'магазин рядом',   -- переносим значения инфраструктуры
    kindergarten VARCHAR(5) COMMENT 'детсад рядом', 
    shcool VARCHAR(5) COMMENT 'школа рядом', 
    centr VARCHAR(5) COMMENT 'центр города рядом', 
    bich VARCHAR(5) COMMENT 'пляж рядом', 
    metro1 VARCHAR(5) COMMENT 'метро рядом', 
    see VARCHAR(5) COMMENT 'водоем рядом', 
    park VARCHAR(5) COMMENT 'парк рядом', 
    forests VARCHAR(5) COMMENT 'лес рядом', 
    company VARCHAR(5) COMMENT 'градостроительные предприятия', 
    mountains VARCHAR(5) COMMENT 'горы рядом', 
    road VARCHAR(5) COMMENT  'дороги, подъездные пути' 
 
) COMMENT = 'архив сделок' ENGINE=ARHIVE;



-- создадим транзакцию перемещения сделок прошлых лет - старше 2021г или триггер, который срабатывает 
-- 2 числа каждого месяца, перенося данные , старше 2лет



DROP TRIGGER IF EXISTS archiver;
delimiter //
//
CREATE TRIGGER archiver 
trigger_time currentdate =  
ON inf_real, arh_deals 
FOR EACH ROW
BEGIN
		
-- Транзакция по перемещению старых объектов (inf_real) 

 
START TRANSACTION;
  
INSERT INTO arh_deals (
    id, name, description, price, currency,	total_area,	living_area, kitchen_area,
	land_area, created_at, sales_at,  property, foto_id, metadata, payment_id,
	adress_id, settlements_id, type_transactions_id, users_id, types_real_id, category_id,  
	
	k_number, rooms, floors, floor1, f_floor, l_floor, balcony, 
    species, playground, parking, y_construction, t_construction, renovation, 
    furniture , heating, water_type, bathrooms, shared_bathr, complex, 
    property_class, under_const, object_status, gas, electricity, water, garage, assignment_o,
    
    shop, kindergarten, shcool, centr, bich, metro1, see, park, forests, 
    company, mountains, road 
) VALUES (
	
	SELECT ir.id, ir.name, ir.description, ir.price, ir.currency,	ir.total_area,	ir.living_area, ir.kitchen_area,
		ir.land_area, ir.created_at, ir.sales_at,  ir.property, f.id, f.metadata, ir.payment_id,
		ir.adress_id, ir.settlements_id, ir.type_transactions_id, ir.users_id, ir.types_real_id, ir.category_id,  
		
		s.k_number, s.rooms, s.floors, s.floor1, s.f_floor, s.l_floor, s.balcony, 
	    s.species, s.playground, s.parking, s.y_construction, s.t_construction, s.renovation, 
	    s.furniture , s.heating, s.water_type, s.bathrooms, s.shared_bathr, s.complex, 
	    s.property_class, s.under_const, s.object_status, s.gas, s.electricity, s.water, s.garage, s.assignment_o,
	    
	    i.shop, i.kindergarten, i.shcool, i.centr, i.bich, i.metro1, i.see, i.park, i.forests, 
	    i.company, i.mountains, i.road
	FROM inf_real ir
	JOIN foto f ON ir.foto_id = f.id 
	JOIN specification s ON s.inf_real_id = ir.id 
	JOIN infrastructure i ON i.inf_real_id =ir.id 
	WHERE ir.sales_at < (current_date()- INTERVAL 2 YEAR ));
  
DELETE 
FROM inf_real ir
JOIN foto f ON ir.foto_id = f.id 
JOIN specification s ON s.inf_real_id = ir.id 
JOIN infrastructure i ON i.inf_real_id =ir.id 
WHERE ir.sales_at < (current_date()- INTERVAL 2 YEAR ) ;
  
COMMIT;


END//

delimiter ;


*/

