-- Create course table
-- Create students table
CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    age INT
);

-- Insert students
INSERT INTO students (student_id, student_name, age)
VALUES
(1, 'Ritika', 21),
(2, 'Aman', 22),
(3, 'Priya', 20);

-- Create courses table
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(50),
    student_id INT
);

-- Insert courses
INSERT INTO courses (course_id, course_name, student_id)
VALUES
(101, 'SQL', 1),
(102, 'Java', 2),
(103, 'Python', 4);

-- INNER JOIN: Show students with their courses
SELECT students.student_name, courses.course_name
FROM students
INNER JOIN courses
ON students.student_id = courses.student_id;