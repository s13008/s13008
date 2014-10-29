select empno,ename,sal,deptno
from employees
where sal >=
(select sal from employees where empno = 1003)
and deptno =
(select deptno from departments where dname = '営業')
/
