select ename, sal, comm,sal+NVL2(comm,comm,0)
from employees
/
