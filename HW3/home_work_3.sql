DROP DATABASE IF EXISTS home_work_3;
CREATE DATABASE home_work_3;
USE home_work_3;

-- Создаём сущьность

DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	firstname VARCHAR(45),
	lastname VARCHAR(45),
	post VARCHAR(100),
	seniority INT, 
	salary INT, 
	age INT
);

-- Наполненяем сущьность данными

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', '40', 100000, 60),
('Петр', 'Власов', 'Начальник', '8', 70000, 30),
('Катя', 'Катина', 'Инженер', '2', 70000, 25),
('Саша', 'Сасин', 'Инженер', '12', 50000, 35),
('Иван', 'Иванов', 'Рабочий', '40', 30000, 59),
('Петр', 'Петров', 'Рабочий', '20', 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', '10', 20000, 35),
('Антон', 'Антонов', 'Рабочий', '8', 19000, 28),
('Юрий', 'Юрков', 'Рабочий', '5', 15000, 25),
('Максим', 'Максимов', 'Рабочий', '2', 11000, 22),
('Юрий', 'Галкин', 'Рабочий', '3', 12000, 24),
('Людмила', 'Маркина', 'Уборщик', '10', 10000, 49);




/* 1) Отсортируйте данные по полю заработная плата
	  (salary) в порядке: убывания;
	  возрастания
*/

-- возрастание

SELECT salary
FROM staff
ORDER BY salary

-- убывание

SELECT salary
FROM staff
ORDER BY salary DESC 

-- 2) Выведите 5 максимальных заработных плат (salary)

SELECT salary
FROM staff
WHERE salary
LIMIT 5 

-- 3) Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
 
 SELECT post, SUM(salary)
 FROM staff 
 GROUP BY post;

/* 4) Найдите кол-во сотрудников с
      специальностью (post) «Рабочий» в возрасте от 24 до
      49 лет включительно. 
*/

SELECT COUNT(post) AS 'Количество'
FROM staff
WHERE post = 'Рабочий' AND age >= 24 AND age <= 49;


-- 5) Найдите количество специальностей

SELECT post AS 'СПЕЦИАЛЬНОСТЬ', COUNT(post) AS 'КОЛ-ВО СПЕЦИАЛЬНОСТЕЙ'
FROM staff 
GROUP BY post;

-- 6) Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 

SELECT post AS 'СПЕЦИАЛЬНОСТЬ'
FROM staff 
GROUP BY post
HAVING AVG(age)<30;









