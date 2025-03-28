set serveroutput on;

declare 
    c int;
begin 
    c:=messages();   
    dbms_output.put_line(c);
end;