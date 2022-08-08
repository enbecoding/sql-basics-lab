--1
CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(20) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);
--2a. and 2b.
INSERT INTO orders ( person_id, product_name, product_price, quantity)
VALUES  ( 1, 'Bike', 79.99, 1 ),
        ( 2, 'Fishing Pole', 119.99, 6 ),
        ( 3, 'Grill', 479.99, 2 ),
        ( 4, 'Pool', 3379.99, 1 ),
        ( 5, 'Sofa', 979.99, 3 );

--3
SELECT *
FROM orders;

--4
SELECT SUM(quantity) AS Total_Items
FROM orders;

--5
SELECT SUM(product_price)
FROM orders;

--6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 2