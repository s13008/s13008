select ename,deptno,sal,
CASE deptno when 10 then sal*1.1
            when 20 then sal*1.2
ELSE sal END "new_SAL"
from employees
/
