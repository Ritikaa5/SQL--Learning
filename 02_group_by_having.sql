-- GROUP BY: Count students for each age
SELECT age,COUNT(*) AS total_students
FROM students
GROUP BY age;


-- Having 
-- Having: show age group with more than 1 student
SELECT age, COUNT(*) AS total_stud
FROM students
GROUP BY age
HAVING COUNT(*)>1;

