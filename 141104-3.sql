insert into employees(empno,ename,hiredate)
values (&&empno, &ename, &hiredate);
select * from employees;
rollback;
select * from employees; 
/
