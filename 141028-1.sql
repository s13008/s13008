select empno,ename,deptno,dname
from employees join departments
using (deptno)
/
