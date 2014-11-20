select e.empno,e.ename,e.job,m.ename,d.dname,d.loc,e.sal,grade
from employees e left outer join employees m
on e.mgr = m.empno
join departments d
on e.deptno = d.deptno
join salgrades
on e.sal between losal and hisal
/
