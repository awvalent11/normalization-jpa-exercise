CREATE OR REPLACE VIEW student_report AS
SELECT jpa_high.students.student_name as studentName,
       jpa_high.students.student_phone as StudentPhone,
       jpa_high.students.term as Term,
       jpa_high.departments.name as StudentDepartmentName,
       jpa_high.advisors.name as AdvisorName,
       jpa_high.advisors.phone as AdvisorPhone,
       advisor_departments.name as AdvisorDepartment

FROM jpa_high.students
INNER JOIN jpa_high.advisors ON advisor_id = jpa_high.advisors.id
INNER JOIN jpa_high.departments ON jpa_high.departments.id = student_department_id
INNER JOIN jpa_high.departments as advisor_departments on advisors.department_id = advisor_departments.id