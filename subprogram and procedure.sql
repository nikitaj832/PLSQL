-- subprogram

-- procedure
/*
create or replace procedure [name]
[in} out | in out]

begin 
<procedure body>

end procedure_name

*/
set serveroutput on;

create procedure message
as 
begin
    dbms_output.put_line('helloo');
    
end;

execute message;
/

declare 
    x int;
    y int;
    c int;

procedure addNo(a in int,b in int)is
begin
    c:=a+b;
    dbms_output.put_line('value of procedure ' || ' ' || c);
end;
 begin
    x:=10;
    y:=20;
    addNo(x,y);
    dbms_output.put_line('value is ' || ' ' || x);
end;
/

declare 
    x int;
    y int;
    c int;

procedure addNo(a in int,b in int)is
begin
    dbms_output.put_line(a+b);
end;
 begin
    x:=10;
    y:=20;
    addNo(x,y);
    dbms_output.put_line('value is ' || ' ' || x);
end;
/
declare 
    x int;
    y int;
    c int;
    output int;
procedure addNo(a in int,b in int,z out int) is
begin
    z:=a+b;
    dbms_output.put_line('inside prcedure' || ' ' || z);
end;
 begin
    x:=10;
    y:=20;
    dbms_output.put_line('beforoe  ' || ' ' || output);
    addNo(x,y,output);
    dbms_output.put_line('value is ' || ' ' || output);
end;
/
DECLARE
    x INT := 10;
    y INT := 20;
   

    PROCEDURE addNo(a IN INT, b IN out INT) IS
    BEGIN
        b := a + b;  -- Using IN OUT to modify the existing value of z
        DBMS_OUTPUT.PUT_LINE('Inside procedure: ' || b);
    END ;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('Before procedure call, output: ' || y);
    addNo(x, y);
    DBMS_OUTPUT.PUT_LINE('After procedure call, output: ' || y);
END;
/

-- FUNCTION
CREATE OR REPLACE FUNCTION add_numbers(a IN INT, b IN INT) 
RETURN INT IS
    result INT;
BEGIN
    result := a + b;
    RETURN result;
END add_numbers;
/
DECLARE
    x INT := 10;
    y INT := 20;
    sum_result INT;
BEGIN
    sum_result := add_numbers(x, y);
    DBMS_OUTPUT.PUT_LINE('Sum is: ' || sum_result);
END;
/

create or replace function messages
return int as
begin
    dbms_output.put_line('hello user');
    return 10;
end;
/
declare 
    c int;
begin 
    c:=messages();   
    dbms_output.put_line(c);
end;
/

--  create funx , how many no. of records in my 
CREATE OR REPLACE FUNCTION count_employees 
RETURN INT AS
    emp_count INT;
BEGIN
    SELECT COUNT(*) INTO emp_count FROM hr.employees;  -- Count records in EMP table
    RETURN emp_count;  -- Return the count
END ;
/
DECLARE 
    total_emps INT;
BEGIN 
    total_emps := count_employees();   
    DBMS_OUTPUT.PUT_LINE('Total number of employees: ' || total_emps);
END;
/




