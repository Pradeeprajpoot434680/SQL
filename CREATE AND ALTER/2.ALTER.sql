USE schoolDB;

DESCRIBE student;

ALTER TABLE student DROP PRIMARY KEY;
ALTER TABLE student ADD PRIMARY KEY(s_id);

# to add constraints;

ALTER TABLE student
ADD CONSTRAINT student_unique_email  UNIQUE (email);

ALTER TABLE student
MODIFY COLUMN s_id INT AUTO_INCREMENT ;


ALTER TABLE course 
MODIFY COLUMN c_id INT AUTO_INCREMENT;

DESCRIBE student;

ALTER TABLE student 
MODIFY s_name VARCHAR(100) NOT NULL;

# modify the existing column;

ALTER TABLE student
MODIFY COLUMN s_name VARCHAR(50) NOT NULL;

ALTER TABLE course
MODIFY COLUMN c_id INT;

ALTER TABLE course
MODIFY COLUMN c_name VARCHAR(50) NOT NULL;

DESCRIBE course;

ALTER TABLE course ADD PRIMARY KEY (c_id);

ALTER TABLE enrollment
ADD CONSTRAINT fk_student FOREIGN KEY (s_id) REFERENCES student(s_id);

ALTER TABLE enrollment
ADD CONSTRAINT fk_course FOREIGN KEY (c_id) REFERENCES course(c_id);

-- Drop the foreign key constraint on the `s_id` column
ALTER TABLE enrollment
DROP FOREIGN KEY fk_student;

-- Drop the foreign key constraint on the `s_id` column
ALTER TABLE enrollment
DROP FOREIGN KEY fk_course;

DESCRIBE enrollment;



