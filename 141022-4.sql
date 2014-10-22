select max(avg(sal))
FROM employees
GROUP BY deptno
/
