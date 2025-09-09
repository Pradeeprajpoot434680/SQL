CREATE DATABASE schoolDB;
USE schoolDB;
-- create a table
CREATE TABLE student (
	s_id INT PRIMARY KEY,
    s_name VARCHAR(50),
    gender CHAR(1),
    dob DATE,
    email VARCHAR(50),
    phone VARCHAR(15)
);

-- verify the table creation
DESCRIBE student;

-- view the columns
SHOW COLUMNS FROM student;
SHOW TABLES;
SHOW DATABASES;

CREATE TABLE course (
	c_id VARCHAR(50),
    c_name VARCHAR(50),
    credits INT
);

DESCRIBE course;

CREATE TABLE enrollment (
	e_id INT PRIMARY KEY,
    s_id INT,
    c_id INT,
    e_date DATE
);

