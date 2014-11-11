create table emp1(
empno number(4) constraint emp1_empno_pk primary key,
ename varchar2(10) constraint emp1_ename_nn  not null,
deptno number(4),
constraint emp1_dept1_deptno_fk foreign key (deptno)
references departments(deptno));
insert into emp1(empno,ename,deptno)
values (999,'singaki',10);
insert into emp1(empno,ename,deptno)
values (999,'singaki',10);
insert into emp1(empno,ename,deptno)
values (888,null,88);
insert into emp1(empno,ename,deptno)
values (777,'ko-chan',987);
drop table emp1;
