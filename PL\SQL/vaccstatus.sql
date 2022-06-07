CREATE DEFINER=`root`@`localhost` PROCEDURE `vaccstatus`(pid int ,pname varchar(20),vaccine varchar(20),novaccine varchar(20))
BEGIN
if (novaccine=2)
then
insert into covstatus value(pid,pname,vaccine,"fully vaccinated");
end if;
if (novaccine=1)
then
insert into covstatus value(pid,pname,vaccine,"partially vaccinated");
end if;
if (novaccine=0)
then
insert into covstatus value(pid,pname,vaccine,"not vaccinated");
end if;
END
