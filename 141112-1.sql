create view v_emp_dept
as select empno,ename,dname,deptno
from employees join departments
using (deptno)
where deptno = 10;
select * from v_emp_dept;
drop view v_emp_dept;
