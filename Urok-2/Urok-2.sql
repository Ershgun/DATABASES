/* Задача №1
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/


-- Скачал и усановил образ на виртуальную машину.

[mysql]
user=root
password=master



/* Задача №2
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/



DROP DATABASE IF EXISTS example;
CREATE DATABASE example;

use example;
CREATE TABLE users(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

show tables;

/* Задача №3
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/


--В консоли меняем вместо mysql на client
nano .my.cnf
[client]
user=root
password=master

--В консоли дампируем в файл mysql.sql
mysqldump example > mysql.sql 

--В консоли проверяем последние 5 строк
tail -5 mysql.sql


--В DBeaver сперва удаляем если есть такие базы ( не обязательно но для проверки домашней работы ) 
DROP DATABASE IF EXISTS sample;
--В DBeaver создаем новую базу
CREATE DATABASE sample;


--В консоли восстанавливаем из файла дамп
mysql sample < mysql.sql






