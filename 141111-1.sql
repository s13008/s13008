create table  dept1(
deptno number(4)
constraint dept1_deptno_pk primary key,
dname varchar2(10) not null,
loc varchar2(10));
insert into dept1(deptno,dname,loc)
values (999,'singaki','11/16');
insert into dept1(deptno,dname,loc)
values (999,'singaki','11/16');
insert into dept1(deptno,dname)
values (888,null);
drop table dept1;
/
