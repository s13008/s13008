select empno,ename,dname,deptno
from employees
natural join departments
where deptno=10 or deptno=20
/
