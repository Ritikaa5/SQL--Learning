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

