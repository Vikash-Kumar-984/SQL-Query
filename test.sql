create database PW; 
use pw;
create table courses
(Course_id Char(6), 
Course_Name Varchar(40), 
Domain Char(20),
Students_Intake int, 
Mode_of_Delivery Varchar(20),
Faculty Varchar(30));

select * from courses;

Alter table courses change column Mode_of_Delivery Delivery_Mode varchar(25);

select * from courses;

Alter table courses drop column Faculty;

Alter table courses add column Faculty Varchar(30);

## drop database pw;
## use pw;
## drop table courses;

Alter table courses rename to Course_Details;

Alter table Course_Details rename to courses;

select * from courses;

insert into courses values
("DS1001","Full Stack Data Science","Data Science",100,"Live","Vikash");

insert into courses values
("DA1001","Full Stack Data Analytics","Data Analytics",70,"Live","Wiry");

insert into courses values
("ML1001","Machine Learning Fundamentals","Machine Learning",170,"Hybrid","Vivek"),
("DL1001","Deepth of Deep Learning","Deep Learning",120,"Recorded","Vishal");

insert into courses (Course_id, Course_name,Domain,Students_Intake) values
("ML1002","Machine Learning Models","Machine Learning",100);

select * from courses;

SET SQL_SAFE_UPDATES = 0;

update courses
set students_intake = 110
where Course_id = "ML1002"; 

delete from courses
where Course_id = 'DL1001';

insert into courses values
("DL1001","Deepth of Deep Learning","Deep Learning",120,"Recorded","Aditya");

select * from courses;

insert into courses values
("DS1001","Data Science","Data Science",120,"Recorded","Vikash");

use pw;
describe courses;

select * from courses;

