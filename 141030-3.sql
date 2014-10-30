select deptno,empno,ename
from employees
where deptno = 10 or deptno = 20
intersect
select deptno,empno,ename
from employees
where deptno = 20 or deptno = 30
/
