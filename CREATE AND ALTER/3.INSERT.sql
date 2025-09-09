USE schoolDB;

INSERT INTO student (s_id, s_name, gender, dob, email, phone) VALUES (1,"PRADEEP KUMAR",'M','2000-05-15', 'alice.johnson@example.com', '123-456-7890');
DELETE FROM student WHERE email='alice.johnson@example.com';
select * from student;
INSERT INTO student (s_id, s_name, gender, dob, email, phone)
VALUES
(1, 'Alice Johnson', 'F', '2000-05-15', 'alice.johnson@example.com', '123-456-7890'),
(2, 'Bob Smith', 'M', '1999-09-23', 'bob.smith@example.com', '234-567-8901'),
(3, 'Charlie Brown', 'M', '2001-01-30', 'charlie.brown@example.com', '345-678-9012'),
(4, 'Dana White', 'F', '1998-11-11', 'dana.white@example.com', '456-789-0123'),
(5, 'Eva Green', 'F', '2000-12-05', 'eva.green@example.com', '567-890-1234');

INSERT INTO course (c_id, c_name, credits)
VALUES
(1, 'Introduction to Computer Science', 3),
(2, 'Calculus I', 4),
(3, 'Physics I', 3),
(4, 'English Composition', 3),
(5, 'World History', 3);

INSERT INTO enrollment (e_id, s_id, c_id, e_date)
VALUES
(1, 1, 1, '2023-09-01'),
(2, 1, 2, '2023-09-01'),
(3, 2, 3, '2023-09-02'),
(4, 2, 4, '2023-09-02'),
(5, 3, 1, '2023-09-03'),
(6, 4, 5, '2023-09-04'),
(7, 5, 2, '2023-09-05');

INSERT INTO student (s_id, s_name, gender, dob, email, phone)
VALUES
(6, 'John Doe', 'M', '1997-02-18', 'john.doe@example.com', '678-123-4567'),
(7, 'Sarah Lee', 'F', '2002-08-22', 'sarah.lee@example.com', '789-234-5678'),
(8, 'Michael Carter', 'M', '1996-12-01', 'michael.carter@example.com', '890-345-6789'),
(9, 'Olivia Harris', 'F', '2001-03-10', 'olivia.harris@example.com', '901-456-7890'),
(10, 'James Wilson', 'M', '1999-07-30', 'james.wilson@example.com', '012-567-8901');

INSERT INTO course (c_id, c_name, credits)
VALUES
(6, 'Data Structures and Algorithms', 4),
(7, 'Linear Algebra', 3),
(8, 'Modern Physics', 3),
(9, 'Advanced English Composition', 3),
(10, 'European History', 3),
(11, 'Introduction to Biology', 4),
(12, 'General Chemistry', 3),
(13, 'Differential Equations', 4),
(14, 'Operating Systems', 3),
(15, 'Microeconomics', 3);


INSERT INTO enrollment (e_id, s_id, c_id, e_date)
VALUES
(8, 6, 6, '2023-09-06'),
(9, 6, 7, '2023-09-06'),
(10, 7, 8, '2023-09-07'),
(11, 7, 9, '2023-09-07'),
(12, 8, 11, '2023-09-08'),
(13, 8, 12, '2023-09-08'),
(14, 9, 13, '2023-09-09'),
(15, 9, 14, '2023-09-09'),
(16, 10, 15, '2023-09-10'),
(17, 10, 6, '2023-09-10');


SELECT * FROM student;
SELECT * FROM course;
sELECT * FROM enrollment;
