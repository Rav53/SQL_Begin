/* Задача 1
Создайте таблицу с мобильными телефонами (mobile_phones),
используя графический интерфейс. Заполните БД данными. 
*/
-- создаём базу данных
DROP DATABASE IF EXISTS Home_Work_1; 
CREATE DATABASE Home_Work_1;
USE Home_Work_1;

-- Создаём таблицу
CREATE TABLE mobile_phones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL UNIQUE, 
	manufacturer VARCHAR(45) NOT NULL,
	product_count BIGINT UNSIGNED,
    price BIGINT UNSIGNED
);

-- Заполняем таблицу значениями (пакетом)
INSERT INTO mobile_phones (product_name, manufacturer, product_count, price)
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

/* 
Выведите название, производителя и цену для товаров, количество
которых превышает 2
*/

SELECT id, product_name, manufacturer, price
FROM mobile_phones WHERE product_count > 2;

/* 
Выведите весь ассортимент товаров марки “Samsung”
*/

SELECT id, product_name, manufacturer, product_count, price
FROM mobile_phones WHERE manufacturer = 'Samsung';

/* 
* С помощью регулярных выражений найти:
Товары, в которых есть упоминание "Iphone"
*/

SELECT id, product_name, manufacturer, product_count, price
FROM mobile_phones WHERE product_name LIKE 'iPhone%';

/* 
* С помощью регулярных выражений найти:
Товары, в которых есть упоминание "Samsung"
*/

SELECT id, product_name, manufacturer, product_count, price
FROM mobile_phones WHERE manufacturer LIKE 'Samsung';

/* 
* С помощью регулярных выражений найти:
Товары, в которых есть ЦИФРЫ
*/

SELECT product_name
FROM mobile_phones WHERE product_name REGEXP '[0-9]';

/* 
* С помощью регулярных выражений найти:
Товары, в которых есть ЦИФРА "8"
*/

SELECT product_name
FROM mobile_phones WHERE product_name REGEXP '8';






