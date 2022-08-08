--1
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INTEGER NOT NULL,
    height FLOAT NOT NULL,
    city VARCHAR(20) NOT NULL,
    favorite_color VARCHAR(20) NOT NULL
)
--2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES  ('Mack', 23, 105.0, 'Dallas', 'Blue'),
        ('Tristan', 29, 132.0, 'Plano', 'Red'),
        ('Angie', 21, 97.9, 'Garland', 'Gold'),
        ('Bill', 42, 112.2, 'Little Elm', 'Grey'),
        ('Kristi', 25, 106.1, 'Frisco', 'Blue');

--3
SELECT * 
FROM person
ORDER BY height DESC;

--4
SELECT * 
FROM person
ORDER BY height;

--5
SELECT * 
FROM person
ORDER BY age DESC;

--6
SELECT * 
FROM person
WHERE age > 20;

--7
SELECT *
FROM person 
WHERE age = 18;

--8
SELECT * 
FROM person
WHERE age < 20 OR age > 30;

--9
SELECT * 
FROM person
WHERE age != 27;

--10
SELECT * 
FROM person 
WHERE favorite_color != 'Red';

--11
SELECT * 
FROM person 
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

--12
SELECT * 
FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'Green';

--13
SELECT * 
FROM person 
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

--14
SELECT * 
FROM person 
WHERE favorite_color IN ('Yellow', 'Purple');