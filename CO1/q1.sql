CREATE DATABASE MOVIE;
USE MOVIE;
CREATE TABLE Movies(
title varchar(20) PRIMARY KEY,
director varchar(20) NOT NULL,
myear varchar(40) NOT NULL,
rating float NOT NULL);

CREATE TABLE Actors(
actor varchar(20) PRIMARY KEY,
ayear varchar(4) NOT NULL);

create table Directors(
director varchar(20) PRIMARY KEY,
dyear varchar(4) NOT NULL);

create table acts(
actor varchar(20) NOT NULL,
title varchar(20) NOT NULL,
foreign key(title)references Movies(title) on delete cascade);

insert into Movies values("Fargo","Coen",1996,8.2);
insert into Movies values("Raising Arizona","Coen",1987,7.6);
insert into Movies values("Spiderman","Raimi",2002,7.4);
insert into Movies values("Wonder Boys","Hanson",2000,7.6);

select *from Movies;
insert into Actors values("Cage",1964);
insert into Actors values("Hanks",1956);
insert into Actors values("Maguire",1975);
insert into Actors values("MCDormand",1957);

insert into Directors values("Coen",1954);
insert into Directors values("Hanson",1945);
insert into Directors values("Raimi",1959);

insert into acts values("Cage","Raising Arizona");
insert into acts values("Maguire","Spiderman");
insert into acts values("Maguire","Wonder Boys");
insert into acts values("MCDormand","Fargo");
insert into acts values("MCDormand","Raising Arizona");
insert into acts values("MCDormand","Wonder Boys");
select * from acts;
drop table acts;
select * from Movies where myear>1997;

select * from Movies where director="Hanson" and myear>1997;

select title,rating from Movies;
select director from Movies union select actor from acts;


CREATE VIEW qwerty AS  
SELECT Movies.director, acts.actor
FROM Movies,acts
WHERE Movies.title = acts.title;
select * from qwerty;

CREATE VIEW test AS  
SELECT Movies.title,Movies.director,acts.actor
FROM Movies,acts
WHERE	Movies.title = acts.title;
select * from test;
select test.title from test WHERE test.director="Coen" and test.actor="MCDormand";

SELECT Movies.title
FROM Movies,acts
WHERE Movies.director="Coen" and acts.actor="MCDormand" and Movies.title = acts.title;
