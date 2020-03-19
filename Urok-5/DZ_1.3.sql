/* Задача N3
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.
*/

DROP DATABASE IF EXISTS UROK_5;
CREATE DATABASE UROK_5;
USE UROK_5;

-- создание таблиц

 DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  VALUE INT UNSIGNED
) COMMENT = 'Запасы на складе';
 
 


-- наполнение нужными данными


 INSERT INTO storehouses_products
  (id, value )
VALUES
  (1, 23),
  (2, 0),
  (3, 45),
  (4,0),
  (5,15);

-- скрипт самого задания

 SELECT id, value FROM storehouses_products ORDER BY CASE WHEN value = 0 then 1 else 0 end, value;
