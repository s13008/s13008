insert into departments (deptno,dname)
values (60,'経理');
select * from departments;
rollback;
select * from departments;
/
