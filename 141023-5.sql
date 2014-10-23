select e.empno,e.ename, m.empno, m.ename
FROM employees e JOIN employees m
on e.mgr = m.empno
/
