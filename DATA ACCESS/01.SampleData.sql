
CREATE DATABASE Library;

USE Library;

CREATE TABLE book (
	BID INT PRIMARY KEY,
    YEAR_OF_PUB INT,
    TITLE VARCHAR(100)
);


CREATE TABLE user (
    UID INT PRIMARY KEY,
    UNAME VARCHAR(50),
    U_ADD VARCHAR(100)
);

CREATE TABLE supplier (
    SID INT PRIMARY KEY,
    SNAME VARCHAR(50),
    S_ADD VARCHAR(100)
);

CREATE TABLE borrow (
	BID INT,
    UID INT,
    DOI DATE,
    FOREIGN KEY (BID) REFERENCES book(BID),
    FOREIGN KEY (UID) REFERENCES user(UID)
);

CREATE TABLE supply_by (
	BID INT,
    SID INT,
    DOS DATE,
    PRICE DECIMAL(10,2),
    FOREIGN KEY (BID) REFERENCES book(BID),
    FOREIGN KEY (SID) REFERENCES supplier(SID)
);


INSERT INTO book VALUES
(1, 2010, 'Database Systems'),
(2, 2011, 'Operating Systems'),
(3, 2012, 'Computer Networks'),
(4, 2015, 'Data Structures'),
(5, 2018, 'Machine Learning'),
(6, 2017, 'Artificial Intelligence'),
(7, 2013, 'Java Programming'),
(8, 2019, 'C++ Basics'),
(9, 2020, 'Cloud Computing'),
(10, 2016, 'Web Development'),
(11, 2011, 'Cyber Security'),
(12, 2014, 'Software Engineering'),
(13, 2017, 'Python Programming'),
(14, 2021, 'Data Science'),
(15, 2020, 'Deep Learning'),
(16, 2012, 'Compiler Design'),
(17, 2019, 'Operating System Internals'),
(18, 2016, 'Computer Graphics'),
(19, 2015, 'Parallel Computing'),
(20, 2022, 'Big Data Analytics');



INSERT INTO user VALUES
(101, 'Amit', 'Delhi'),
(102, 'Priya', 'Mumbai'),
(103, 'Rahul', 'Chennai'),
(104, 'Sneha', 'Bangalore'),
(105, 'Vikas', 'Kolkata'),
(106, 'Rohan', 'Delhi'),
(107, 'Neha', 'Pune'),
(108, 'Karan', 'Jaipur'),
(109, 'Komal', 'Lucknow'),
(110, 'Anil', 'Hyderabad'),
(111, 'Meena', 'Bhopal'),
(112, 'Suresh', 'Indore'),
(113, 'Rajesh', 'Delhi'),
(114, 'Simran', 'Nagpur'),
(115, 'Manish', 'Patna'),
(116, 'Pooja', 'Noida'),
(117, 'Alok', 'Chandigarh'),
(118, 'Isha', 'Gurgaon'),
(119, 'Deepak', 'Surat'),
(120, 'Tina', 'Ranchi');


INSERT INTO supplier VALUES
(201, 'TechBooks Ltd', 'Delhi'),
(202, 'EduWorld', 'Mumbai'),
(203, 'LearnMore', 'Chennai'),
(204, 'KnowledgeHub', 'Bangalore'),
(205, 'BookNation', 'Kolkata'),
(206, 'SmartBooks', 'Pune'),
(207, 'StudyWorld', 'Jaipur'),
(208, 'ReadersPoint', 'Lucknow'),
(209, 'ProBooks', 'Hyderabad'),
(210, 'GlobalEdu', 'Delhi'),
(211, 'FastBooks', 'Bhopal'),
(212, 'BookExpress', 'Indore'),
(213, 'EduMart', 'Nagpur'),
(214, 'KnowledgeMart', 'Patna'),
(215, 'TechReaders', 'Noida'),
(216, 'InfoHub', 'Chandigarh'),
(217, 'ScholarBooks', 'Gurgaon'),
(218, 'EduFast', 'Surat'),
(219, 'BookHeaven', 'Ranchi'),
(220, 'CampusStore', 'Delhi');


INSERT INTO borrow VALUES
(1, 101, '2021-01-10'),
(2, 102, '2021-02-15'),
(3, 103, '2021-03-20'),
(4, 104, '2021-04-12'),
(5, 105, '2021-05-22'),
(6, 106, '2021-06-11'),
(7, 107, '2021-07-07'),
(8, 108, '2021-08-09'),
(9, 109, '2021-09-14'),
(10, 110, '2021-10-25'),
(11, 111, '2021-11-30'),
(12, 112, '2021-12-18'),
(13, 113, '2022-01-05'),
(14, 114, '2022-02-21'),
(15, 115, '2022-03-17'),
(16, 116, '2022-04-20'),
(17, 117, '2022-05-25'),
(18, 118, '2022-06-11'),
(19, 119, '2022-07-09'),
(20, 120, '2022-08-16');





INSERT INTO supply_by VALUES
(1, 201, '2019-01-05', 500.00),
(2, 202, '2019-02-10', 450.00),
(3, 203, '2019-03-12', 600.00),
(4, 204, '2019-04-25', 550.00),
(5, 205, '2019-05-14', 700.00),
(6, 206, '2019-06-22', 800.00),
(7, 207, '2019-07-19', 300.00),
(8, 208, '2019-08-15', 350.00),
(9, 209, '2019-09-05', 400.00),
(10, 210, '2019-10-10', 650.00),
(11, 211, '2019-11-11', 900.00),
(12, 212, '2019-12-20', 500.00),
(13, 213, '2020-01-17', 720.00),
(14, 214, '2020-02-28', 620.00),
(15, 215, '2020-03-21', 430.00),
(16, 216, '2020-04-30', 390.00),
(17, 217, '2020-05-19', 850.00),
(18, 218, '2020-06-23', 760.00),
(19, 219, '2020-07-11', 970.00),
(20, 220, '2020-08-29', 1000.00);


SELECT * FROM user;
SELECT * FROM book;
SELECT * FROM supplier;
SELECT * FROM supply_by;
SELECT * FROM borrow;