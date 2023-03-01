--@formatter:off
INSERT into advisors (name, phone, department)
SELECT DISTINCT advisor_name, advisor_phone, advisor_department
        FROM jpa_high.students