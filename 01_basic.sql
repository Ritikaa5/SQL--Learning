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

-- Display all students
SELECT* FROM students;

-- Select specific coloumn
SELECT name, age
FROM students;


