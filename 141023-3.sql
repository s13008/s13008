select ordno,date_ordered,cname,ename
from orders
join customers
on orders.custno = customers.custno
join employees
on orders.salesman_no = employees.empno
/
