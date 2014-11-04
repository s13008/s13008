insert into dept_copy(deptno,dname,loc)
select deptno+1, dname, loc;
select * from dept_copy;
rollback;
select * from dept_copy;
/
