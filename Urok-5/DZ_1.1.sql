/* Задача N1
Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
*/

DROP DATABASE IF EXISTS UROK_5;
CREATE DATABASE UROK_5;
USE UROK_5;

-- создание таблиц

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT null,
  updated_at DATETIME DEFAULT null
) COMMENT = 'Покупатели';


-- наполнение нужными данными

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');


-- скрипт самого задания

UPDATE users
set created_at = CURRENT_TIMESTAMP  WHERE created_at is NULL;

UPDATE users
set updated_at = CURRENT_TIMESTAMP  WHERE updated_at is NULL;
