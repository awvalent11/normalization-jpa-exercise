-- @formatter:off
CREATE TABLE if NOT EXISTS jpa_high.students (
    id integer GENERATED ALWAYS AS IDENTITY,
    student_name varchar(255),
    student_phone varchar(255),
    student_department_id integer,
    student_department_name varchar(255),
    advisor_name varchar(255),
    advisor_phone varchar(255),
    advisor_department varchar(255),
    term varchar(255),
    PRIMARY KEY (id)
)

