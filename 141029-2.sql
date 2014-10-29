select empno,ename,deptno
from employees
where deptno =
(select deptno from departments where dname = '営業')
/
