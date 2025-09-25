USE schoolDB;

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrollment;

-- student_id 1 all courses
SELECT * 
FROM course 
WHERE c_id IN (
    SELECT c_id 
    FROM enrollment
    WHERE s_id = 1
);

-- course_id 1 kon kon enroll kiya h

SELECT * FROM student
WHERE s_id IN (SELECT s_id FROM enrollment
WHERE c_id = 1);


;

