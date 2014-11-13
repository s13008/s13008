create sequence s_ord;                                                      
select s_ord.nextval from dual;
alter sequence s_ord increment by 10;
select s_ord.nextval from dual;
drop sequence s_ord;
