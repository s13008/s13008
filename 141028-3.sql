select e.empno,e.ename,d.deptno,d.dname
from employees e right outer join departments d
on (e.deptno = d.deptno)
/
