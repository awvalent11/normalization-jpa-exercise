--@formatter:off
UPDATE students
SET advisor_id = advisors.id
FROM advisors
WHERE advisor_name = name
