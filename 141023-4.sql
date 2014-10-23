select empno, ename, sal, grade
from employees
join salgrades
on employees.sal
between salgrades.losal and salgrades.hisal
order by empno
/
