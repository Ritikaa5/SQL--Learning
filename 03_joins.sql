-- create course table
CREATE TABLE course(
    course_id INT,
    course_name INT,
    student_id INT
);

INSERT INTO course(course_id,course_name,student_id)
VALUES
(101,'SQL',1),
(102,'JAVA',2),
(103,'Python',4);


-- create student table
CREATE TABLE students(
    student_id INT,
    student_name VARCHAR(50),
    age INT
);


INSERT INTO students(student_id,student_name,age)
VALUES
(1,'Ritika',21),
(2,'Aman',22),
(2,'Priya',20);

-- INNER JOINS
SELECT students.student_name,
course.course_name
FROM students
INNER JOIN course
ON student.student_id = course.student_id;


-- LEFT JOIN
--  Show all the students and thei courses
SELECT students.student_name, coruse.course_name
FROM students
LEFT JOIN courses
ON students.student_id = courses.student_id;


-- RIGHT JOIN
-- Show all courses and their students
SELECT students.student_name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.student_id = courses.student_id;


-- CROSS JOIN
-- Combine every student with every course
SELECT  students.student_name, courses.course_name
FROM students
CROSS JOIN courses;


-- SELF JOIN
CREATE TABLE employees(
    employee_id INT,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees(employee_id,employee_name,manager_id)
VALUES
(1,'Ritika',NULL),
(2,'Aman',1),
(3,'Priya',1),
(4,'Rahul',2);

--show emplyoee with their managers
SELECT employees.employee_name,managers.employee_name
FROM employees
JOIN employees AS managers
ON employees.manager_id = managers.employee_id;
