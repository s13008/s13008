select ename, sal, comm,sal+NVL2(comm,0,null)
from employees
/
