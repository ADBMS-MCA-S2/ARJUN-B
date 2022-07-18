q1
--------------------------------------------------------------------------------------------------
create database college;
use college;
create table student(rollno int primary key,name varchar(20),address varchar(20),total_marks int);
create table admission(rollno int,cid int,sem int,foreign key(rollno) references student(rollno),foreign key(cid) references course(cid),primary key(cid,rollno));
create table course(cid int primary key,coursename varchar(20),fees int);
drop table admission;
q2
---------------------------------------------------------------------------------------------------
insert into student values(101,"arun","kollam",900);
insert into student values(102,"akhila","idukki",890);
insert into student values(103,"thomas","kasaragod",934);
insert into student values(104,"shibili","kannur",911);
insert into student values(105,"arjun","malappuram",902);
select * from student;

insert into course values(1,"mech",45000);
insert into course values(2,"mca",50000);
insert into course values(3,"ec",50000);
insert into course values(4,"chemical",60000);
insert into course values(5,"civil",38000);

select * from course;

insert into admission values(103,4,2);
insert into admission values(101,3,4);
insert into admission values(105,1,3);
insert into admission values(102,5,5);
insert into admission values(104,12,1);
insert into admission values(105,2,5);

select * from admission;

q3
------------------------------------------------------------------
create view  mca as select name from student s join admission a 
 join course c where s.rollno=a.rollno and a.cid=c.cid and coursename="mca";
 drop view mca;
select * from mca;

q4
---------------------------------------------------------------------------------------
select distinct rollno,sum(fees) from admission join course where admission.cid=course.cid and rollno=105;

q5
----------------------------------------------------------------------------
select cid,count(rollno) as number_of_student from admission group by cid;


