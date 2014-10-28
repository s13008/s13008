select e.empno,e.ename,d.deptno,d.dname
from employees e left outer join departments d
on (e.deptno = d.deptno)
/
