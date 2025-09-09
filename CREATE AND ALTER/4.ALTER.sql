SELECT * FROM schoolDB.student;
SHOW TABLES;
DESCRIBE student;
DESCRIBE course;
DESCRIBE enrollment;

--insert a new student
INSERT INTO student (s_name,email,phone) VALUES ("PRADEEP","pradeep@gmail.com","8650152081");
SELECT * FROM student;

UPDATE student 
SET phone='9719515692'
WHERE s_id=11;

DELETE FROM student
where s_id=11;

-- Add a new column

ALTER TABLE student ADD address VARCHAR(200);
DESCRIBE student;

-- Drop a column
ALTER TABLE student DROP COLUMN address;

-- Rename a column
ALTER TABLE student CHANGE phone mobile_number VARCHAR(15);



