select deptno,job,count(*),avg(sal)
FROM employees
GROUP BY deptno,job
having count(*) >= 2
/
