create database covid;
use covid;
create table person(pid int primary key,pname varchar(20),dob date,vaccine varchar(20),novaccine varchar(20));
insert into person values(1,"arjun","2000-10-10","covisheild",2);
insert into person values(2,"ammu","2000-09-09","covisheild",1);
insert into person values(3,"akhila","2001-10-10","covaxin",2);
insert into person values(4,"arun","1999-10-10",null,0);
select * from person;
CREATE TABLE covstatus(pid INT NOT NULL,pname VARCHAR(20) NOT NULL,vaccine VARCHAR(20),vstatus VARCHAR(20) NOT NULL);

call vaccstatus(1,"arjun","covisheild",2);
call vaccstatus(2,"ammu","covisheild",1);
call vaccstatus(3,"akhila","covaxin",2);
call vaccstatus(2,"arun",null,0);
select * from covstatus;

select pid,pname,travel(novaccine) from person;
