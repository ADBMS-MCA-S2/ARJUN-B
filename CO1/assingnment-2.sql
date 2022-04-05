create database MovieDatabase;
use MovieDatabase;
create table ACTOR (Act_id int primary key, Act_Name varchar(50) not null, Act_Gender enum('male','female'));
insert into ACTOR values(100,'mohanlal','male');
insert into ACTOR values(101,'Leonardo DiCaprio','male');
insert into ACTOR values(102,'mammootty','male');
insert into ACTOR values(104,'nivin','male');
insert into ACTOR values(108,'vijay','male');
select* from ACTOR;

create table DIRECTOR (Dir_id int primary key, Dir_Name varchar(50) not null, Dir_Phone bigint(20));
insert into DIRECTOR values(200,'Hitchcock','8877994455');
insert into DIRECTOR values(208,'Steven Spielberg’','8877994444');
insert into DIRECTOR values(203,'lal jose','8877999455');
insert into DIRECTOR values(204,'priyadarshan','8832994455');
insert into DIRECTOR values(201,'Steven Spielberg’','8877114455');
select * from DIRECTOR;

create table  MOVIES (Mov_id int primary key, Mov_Title  varchar(50) not null, Mov_Year year not null, Mov_Lang varchar(50) not null, Dir_id int);
insert into MOVIES values(300,'Psycho',1960,'english',200);
insert into MOVIES values(301,'classmate',2006,'malayalam',203);
insert into MOVIES values(303,'Hungama 2',2021,'hindi',204);
insert into MOVIES values(304,'Lincoln',2012,'english',208);
insert into MOVIES values(305,'The Post',2017,'english',208);
select * from MOVIES;

create table MOVIE_CAST(Act_id int primary key, Mov_id int,Roll varchar(50) not null);
insert into MOVIE_CAST values(100,303,'HERO');
insert into MOVIE_CAST values(102,301,'Villian');
insert into MOVIE_CAST values(101,300,'HERO');
insert into MOVIE_CAST values(108,305,'Co-actor');
insert into MOVIE_CAST values(104,304,'HERO');
select * from MOVIE_CAST;

create table RATING (Mov_id int primary key, Rev_Stars int not null);
insert into RATING values(303,8);
insert into RATING values(301,7);
insert into RATING values(305,6);
insert into RATING values(304,5);
insert into RATING values(300,6);
select * from RATING;





select Mov_Title from MOVIES inner join DIRECTOR where MOVIES.Dir_id=DIRECTOR.Dir_id and Dir_Name='Hitchcock';

select Act_name from ACTOR inner join MOVIE_CAST on ACTOR.Act_id=MOVIE_CAST.Act_id join MOVIES on  MOVIES.Mov_id=MOVIE_CAST.Mov_id where MOVIES.Mov_Year<2000 or MOVIES.Mov_Year>2015;





