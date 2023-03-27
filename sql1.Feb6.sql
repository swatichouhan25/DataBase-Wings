--create table emp1 as
--(select employee_id,last_name,job_id,department_id,salary from employees where department_id < 80);

--create table dept as
--(select department_id,department_name,manager_id,location_id from departments);

--insert into emp1(&id,'&lname','&job',&deptid,&sal);

--insert into emp1(last_name,employee_id,job_id,salary,department_id)values('aa',10,'SA_REP',2000,80);

	--insert into emp1(last_name,employee_id,job_id,salary,department_id)values('ac',12,'SA_REP',null,80);

	--insert into emp1(last_name,employee_id)values('ac',12);

	--insert into emp1(last_name,employee_id,job_id,salary,department_id) select----(last_name,employee_id,job_id,salary,department_id) from employees where department_id = 90;

--select * from emp1;
 --update emp1 set salary = 5000, department_id =60 where employee_id = 12;
 	

	--update emp1 set salary=round(to_number('4,000.96')), department_id =60 where employee_id = 12;

--update emp1 set salary=(select salary from emp1 where employee_id=200)where employee_id=12;

--select salary from emp1 where employee_id=200;

--select * from emp1 where employee_id in(200,12);
-- update emp1 set salary = 1000;
--update emp1 e set salary = (select salary from employees where employee_id=e.employee_id);

--update emp set salary =1000;
--update emp1 e set salary=(select nvl(salary,e.salary) from employees where employee_id=e.employee_id);

--delete from emp1 where department_id is null;
--delete from emp1 where salary = (select salary from emp1 where employee_id=204);
--select salary from emp1 where employee_id=204;

--update emp1 set salary = 10000 where employee_id in(203,202);

--update emp1 set salary=40000 where employee_id=203;

--select salary from emp1 where department_id=50 and employee_id= 199 for update;


--select salary from emp1 where department_id=50 and employee_id= 199 for update nowait;


merge into emp1 using (select employee_id, last_name,salary from employees )e on(emp1.employee_id=e.employee_id)
when matched then
update set salary=e.salary when not matched then
insert values(e.employee_id,e.last_name,e.job_id,e.department_id,e.salary);