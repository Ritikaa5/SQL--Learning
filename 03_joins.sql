-- Create course table
CREATE TABLE course(
    course_id INT,
    course_name VARCHAR(20),
    stu_id INT
);

-- INSERT COURSE DATA
 INSERT INTO courses(course_id,course_name, stu_id)
 VALUES
 (101,'SQL',1),
 (102,'JAVA',2),
 (103,'Python',4); 

 --INNER JOIN
 -- shows students with their courses
 SELECT student.name,
 course.course_name
 FROM students
 INNER JOIN courses
 ON students.id = course.student_id;