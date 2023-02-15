DROP DATABASE IF EXISTS home_work_2;
CREATE DATABASE home_work_2;
USE home_work_2;

-- создаём таблицу
CREATE TABLE sales (
	id SERIAL PRIMARY KEY,
	order_date DATE NOT NULL,
	count_product BIGINT
	);

-- заполняем данными
INSERT INTO sales (order_date, count_product)
VALUES
	(20220101, 156),
	(20220102, 180),
	(20220103, 21),
	(20220104, 124),
	(20220105, 341);
	

-- Определяем тип заказа по условию с одновременной выборкой
SELECT 
	id AS 'id заказа',
	CASE 
		WHEN count_product < 100 THEN 'Маленький заказ'
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		WHEN count_product > 300 THEN 'Большой заказ'
		ELSE 'Уточните количество'
	END	AS 'Тип заказа'
FROM sales;

-- создаём таблицу к заданию 3
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	employee_id VARCHAR(10) NOT NULL,
	amount DECIMAL (10,2),
	order_status VARCHAR(25)
	);

-- заполняем данными

INSERT INTO orders (employee_id, amount, order_status )
VALUES
	('e03', 15.00, 'OPEN'),
	('e01', 25.50, 'OPEN'),
	('e05', 100.70, 'CLOSED'),
	('e04', 22.18, 'OPEN'),
	('e04', 15.00, 'CANCELLED');

-- елаем выборку с заменой описания
SELECT 
	id,
	CASE 
		WHEN order_status = 'OPEN' THEN 'Order is in open state'
		WHEN order_status = 'CLOSED' THEN 'Order is closed'
		WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
	END	AS 'full_order_status' 
FROM orders;



