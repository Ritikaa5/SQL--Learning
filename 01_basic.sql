CREATE DATABASE practice_db;

USE practice_db;

CREATE TABLE students(
    id INT,
    name VARCHAR(50),
    age INT
);

INSERT INTO students(id,name,age)
VALUES(1,'Ritika',21);

INSERT INTO student(id,name,age)
VALUES(2,"Aman",22);

INSERT INTO student(id,name,age)
VALUES(3,"Priya",20);

-- select query

-- Display all students
SELECT* FROM students;

-- Select specific coloumn
SELECT name, age
FROM students;


-- WHERE 
-- seclect student whose age > 20
SELECT * FROM students
WHERE age > 20;


-- order by
-- select stduents by age
-- asc -> desc
SELECT * FROM students
ORDER BY age;

-- sort student by age in desc order
SELECT * FROM students
ORDER BY age DESC;

-- LIMIT
-- Display only first 2 students
SELECT*FROM students
LIMIT 2;


-- DISTINCT
-- Display unique ages
SELECT DISTINCT age
FROM students;

--AND
-- select studnets whoes age is greater than 
-- 20 and id is less than 3
SELECT* FROM students
WHERE age > 20 AND id < 3;


-- OR 
-- select students whoes age sis 20 or 22
SELECT * FROM students
WHERE age = 20 OR age = 22;


-- NOT
-- select age whoes not 22
SELECT* FROM students
WHERE NOT age = 22;

--IN
-- select students whoes age is 20 or 22
SELECT * FROM students
WHERE age IN(20,22);

-- BETWEEN
-- select students whose age is between 20 and 22
SELECT * FROM students
WHERE age BETWEEN 20 AND 22;

--LIKE
-- find students whoese name start with 'R'
SELECT* FROM students
WHERE name LIKE 'R%';

-- isNULL / is NOT NULL

--UPDATE
-- set age of student with id 3 to NULL
UPDATE students
SET age = NULL
WHERE id = 3;


-- isNULL
SELECT* FROM students
WHERE age is NULL;

--is NOT NULL
-- find students whose age is not NULL
SELECT* FROM students
WHERE age IS NOT NULL;

--ALIAS
-- Rename column in the column
SELECT name AS stu_name, age AS
stu_age
FROM riki;


