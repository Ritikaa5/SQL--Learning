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


-- IN + subquery
SELECT student_name
FROM students
WHERE student_id INT(
    SELECT student_id
    FROM courses
    WHERE course_name IN('SQL','JAVA')
);

-- EXISTS
-- find shudent who have at least one course
SELECT student_name
FROM students
WHERE EXISTS(
    SELECT 1
    FROM courses
    WHERE courses.student_id = students.student_id
);


-- Correlated Subquery
-- find students are the oldest student
SELECT student_name,age
FROM students
WHERE EXISTS (
    SELECT 1
    FROM students AS other_students
    WHERE other_students.age > students.age
);


-- FROM subqery
-- Find students whose age is greater than 21
SELECT student_name, age
FROM(
    SELECT student_name,age
    FROM students
    WHERE age > 21
) AS result;

