select * from hr.employees;

SET SERVEROUTPUT ON;

declare
    msg varchar(20):= 'hello world by niki';


begin
    dbms_output.put_line(msg);
    
end;



declare
    msg varchar(20):= 'hello world by niki';


begin
    dbms_output.put_line(msg || ' ' || '###');
    
end;



 
