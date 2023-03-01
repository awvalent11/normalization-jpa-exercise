--@formatter:off
INSERT INTO jpa_high.departments (name)
    SELECT department
FROM (SELECT student_department_name as department  FROM jpa_high.students
     UNION SELECT department FROM jpa_high.advisors
     WHERE department not in (select student_department_name from jpa_high.students)) as deps;
-- update student foreign keys
UPDATE jpa_high.students
SET student_department_id = departments.id
FROM jpa_high.departments
WHERE departments.name = student_department_name;
-- update advisor foreign keys
UPDATE  jpa_high.advisors
SET department_id = departments.id
FROM jpa_high.departments
WHERE departments.name = jpa_high.advisors.department;