--@formatter:off
ALTER TABLE students
ADD COLUMN advisor_id integer REFERENCES jpa_high.advisors(id);