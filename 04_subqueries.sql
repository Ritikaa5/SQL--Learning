-- Create table students
CREATE TABLE students(
    student_id INT,
    student_name VARCHAR(50),
    age INT
);

INSERT INTO students(student_id,student_name,age)
VALUES
(1,'Ritika',21),
(2,'Aman',25),
(3,'Priya',20),
(4,'Rahul',30);

SELECT student_name , age
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);