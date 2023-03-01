--@formatter:off
ALTER TABLE jpa_high.advisors
ADD COLUMN department_id integer REFERENCES jpa_high.departments(id);
