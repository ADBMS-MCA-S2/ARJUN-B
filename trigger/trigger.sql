CREATE DEFINER=`root`@`localhost` TRIGGER `employees`.`employee_BEFORE_INSERT` BEFORE INSERT ON `employee` FOR EACH ROW
BEGIN
if new.dept='mca'then
INSERT INTO dept_mca set id=new.emp_id,dept_name=new.emp_name,dept_emp="Asst.proff fill";
end if;
if new.dept='cs' then
 INSERT INTO dept_cs set id=new.emp_id,dept_name=new.emp_name,dept_emp="Asst.proff fill";
 end if;
END
