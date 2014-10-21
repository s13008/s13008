select ename, sal, comm,sal+COALESCE(comm,0)
from employees
/
