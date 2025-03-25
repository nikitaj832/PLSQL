SET SERVEROUTPUT ON;

DECLARE
    msg VARCHAR2(20) := 'hello world by niki';
    a int :=10;
    b int:=20;
    c int;
    d constant int :=19;
BEGIN
    c:=a+b;
    DBMS_OUTPUT.PUT_LINE(msg || ' ' || c);
END;
/

-- ऑपरेटर 
SET SERVEROUTPUT ON;
DECLARE
    msg VARCHAR2(20) := 'hello world by niki';
    a int :=10;
    b int:=20;
    c int;
    d constant int :=19;
    
BEGIN
    c:=a+b;
    DBMS_OUTPUT.PUT_LINE(msg || ' ' || c);
    if (a>15) then
        DBMS_OUTPUT.PUT_LINE('at is greater than 15');
    elsif (a=10) then
        DBMS_OUTPUT.PUT_LINE('value is 10');
    else
        DBMS_OUTPUT.PUT_LINE('else part');
    END if;
end;

/


