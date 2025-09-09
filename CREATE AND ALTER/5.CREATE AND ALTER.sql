USE schoolDB;
DESCRIBE student;
DESCRIBE course;
DESCRIBE enrollment;

SELECT * FROM student;

UPDATE student
SET mobile_number ='8650152081'
WHERE s_id = 2;

#cannot delete dueto foreign key constraints;

DELETE FROM student
WHERE s_id = 10;

# Add a new column;

ALTER TABLE student 
ADD address VARCHAR(100);

# delete a column 
ALTER TABLE student
DROP COLUMN address;

# Rename a column name 

ALTER TABLE student
CHANGE mobile_number phone_number VARCHAR(15);

# Update

UPDATE student
SET phone_number='9719515692' , email='pradeep@gmail.com'
WHERE s_id = 10;

# Delete
 DELETE FROM student
 WHERE gender='F';
 
 #Column related 
 # Add A new column
 ALTER TABLE student ADD address VARCHAR(200);
#Drop a column

ALTER TABLE student DROP COLUMN address;

#c) Modify column datatype;

ALTER TABLE student MODIFY phone VARCHAR(20);

# Change column name

ALTER TABLE student CHANGE phone mobile_number VARCHAR(20);
ALTER TABLE students RENAME COLUMN phone TO contact_number;


#e) Add a constraint-- 
ALTER TABLE student ADD CONSTRAINT unique_email UNIQUE (email);

#f) Drop a constaints
ALTER TABLE students DROP INDEX unique_email;

# Remane Table

RENAME TABLE student TO students;
ALTER TABLE  students RENAME  TO student;

