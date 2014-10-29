select deptno, dname, avg(sal)
from employees natural join departments
group by deptno, dname
having avg(sal) >= (select avg(sal) from employees)
/
