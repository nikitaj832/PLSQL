SET SERVEROUTPUT ON;

declare
    eid int:=102;
    v_name hr.employees.first_name%TYPE;

begin
    select first_name into v_name from hr.employees where employee_id =eid;
    dbms_output.put_line(eid || '' || v_name);

end;
/
declare
    eid int:=102;
    v_name hr.employees.first_name%TYPE;
    emp_rec hr.employees%rowtype;
begin
    select * into emp_rec from hr.employees where employee_id =eid;
    dbms_output.put_line(emp_rec.first_name || '' || emp_rec.last_name);

end;
/

-- cursor

create table test(id int);
insert into test values(10);
insert into test values(20);
insert into test values(30);

select * from test;


