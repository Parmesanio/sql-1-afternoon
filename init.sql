--PERSON TABLE

-- 1
CREATE TABLE Person (
    personID SERIAL PRIMARY KEY,
    name varchar(255),
    age smallint,
    height decimal,
    city varchar(255),
    favoriteColor varchar(64)
);

-- 2
INSERT INTO Person
(name, age, height, city, favoriteColor) VALUES
('Sean', 24, 180.34, 'Phoenix', 'Orange'),
('Austin', 23, 150.34, 'Phoeni', 'Orang'),
('Hunter', 18, 190.34, 'Phoen', 'Oran'),
('Jordan', 25, 185.34, 'Phoe', 'Ora'),
('Fifth', 2423, 3837.34, 'Pho', 'Or');

-- 3
SELECT * FROM PERSON ORDER BY HEIGHT ASC;

-- 4
SELECT * FROM PERSON ORDER BY HEIGHT DESC;

-- 5
SELECT * FROM PERSON ORDER BY AGE ASC;

-- 6
SELECT * FROM Person WHERE age > 20;

-- 7
SELECT * FROM Person WHERE age = 20;

-- 8
SELECT * FROM Person WHERE age < 20 OR age > 30;

-- 9
SELECT * FROM Person WHERE age != 27;

-- 10
SELECT * FROM Person WHERE favoriteColor != 'red';

-- 11
SELECT * FROM Person WHERE favoriteColor != 'red' OR favoriteColor != 'blue';

-- 12
SELECT * FROM Person WHERE favoriteColor = 'green' OR favoriteColor = 'Orange';

-- 13
SELECT * FROM Person WHERE favoriteColor IN ('Orange', 'green', 'blue');

-- 14
SELECT * FROM Person WHERE favoriteColor IN ('yellow', 'purple');

-- ORDERS TABLE

-- 1
CREATE TABLE Orders (
    personID smallint,
    product_name varchar(64),
    product_price decimal,
    quantity smallint
);

-- 2
INSERT INTO Orders
(personID, product_name, product_price, quantity) VALUES
(1, 'erje', '40.23', 5),
(2, 'erlkfmkfje', '4.13', 67);

-- 3
SELECT * FROM Orders;

-- 4
SELECT sum(quantity) FROM Orders;

-- 5
SELECT sum(product_price) FROM Orders;

-- 6
SELECT sum(quantity) FROM Orders WHERE personID = 1;

-- ARTIST TABLE

-- 1
INSERT INTO Artist
(name) VALUES
('s;ekf'),
('s;ekf'),
('s;ekf');

-- 2
SELECT * FROM Artist WHERE ArtistId < 11 ORDER BY name DESC;

-- 3
SELECT * FROM Artist WHERE ArtistId < 6 ORDER BY name ASC;

-- 4 
SELECT * FROM Artist WHERE name LIKE 'black%';

-- 5
SELECT * FROM Artist WHERE name LIKE '%black%';

-- EMPLOYEE TABLE

-- 1
SELECT FirstName, LastName FROM Employee WHERE city = 'Calgary';

-- 2
-- SELECT FirstName, LastName, BirthDate FROM Employee WHERE ;

-- 3

