--@formatter:off
CREATE TABLE jpa_high.advisors (
    id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name varchar(255),
    phone varchar(255),
    department varchar(255)
);