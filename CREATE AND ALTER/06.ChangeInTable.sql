CREATE TABLE student1 (
	sid int primary key,
	snmae varchar(20),
    email varchar(20),
    age int not null,
    roll_no int auto_increment unique
);

describe student1;

alter table student1
modify column snmae varchar(20) not null;
alter table student1 drop primary key;
alter table student1 
modify column sid int primary key auto_increment;

alter table student1
modify column roll_no int;


alter table student1
add constraint uni_email unique(email);

alter table student1
drop constraint uni_email;

alter table student1
change column snmae s_name varchar(50) ;
describe student1;

select * from student
order by s_id desc limit 1,2;

select * from student
limit 2,4;

insert into student1 (s_name,email,age,roll_no,cgpa) values ("pradeep","prad2eep@gmail.com",23,2122,343);
select * from student1;

alter table student1
add column cgpa float;
describe student1;

show columns from student1;

alter table student1
add constraint check(age>20);

delete from student1
where cgpa > 10;

alter table student1
add constraint check_cgpa check (cgpa  between 0 and 10);
