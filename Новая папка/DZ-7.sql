-- -------- Урок №7-----------------------------
-- -------- Задача 1. --------------------------
-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT id, name  FROM users u where id in (select user_id from orders o) 


-- -------- Задача 2. --------------------------
-- Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.name, c.name FROM products p left join catalogs c on p.catalog_id = c.id


-- -------- Задача 3. --------------------------
-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

-- Создадим для тренировки и наглядности таблицу:

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from1 VARCHAR(255) COMMENT 'Откуда',
  to1 VARCHAR(255) COMMENT 'Куда'
) COMMENT = 'таблица рейсов';

INSERT INTO flights VALUES
  (NULL, 'Moscow', 'Omsk'),
  (NULL, 'Novgorod', 'Kazan'),
  (NULL, 'Irkutsk', 'Moscow'),
  (NULL, 'Omsk', 'Irkutsk'),
  (NULL, 'Moscow', 'Kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) COMMENT 'Название города на английском',
  name VARCHAR(255) COMMENT 'Название города на русском'
  ) COMMENT = 'таблица городов';

INSERT INTO cities  VALUES
  ('Moscow', 'Москва'),
  ('Novgorod', 'Новгород'),
  ('Irkutsk', 'Иркутск'),
  ('Omsk', 'Омск'),
  ('Kazan', 'Казань');
  
-- Выводим список рейсов flights с русскими названиями городов.
 
SELECT
 f.id, 
 (select name FROM cities c WHERE c.label = f.from1) AS 'from1',
 (select name FROM cities c WHERE c.label = f.to1) AS 'to1' 
FROM
 flights f ;
 
 
 
 
 
 
 
 
 