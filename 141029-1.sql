select empno,ename,sal
from employees
where sal >=
(select sal from employees where empno = 1003)
/
