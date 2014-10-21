select ename, sal, comm,sal+NVL(comm,0)
from employees
/
