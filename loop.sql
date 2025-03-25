SET SERVEROUTPUT ON;

DECLARE
    i int :=1;

BEGIN
    loop
    DBMS_OUTPUT.PUT_LINE('value : ' || i);
    i:=i+1;
    exit when i>5;
    end loop;
END;

-- while loop
/
DECLARE
    a int := 5;

BEGIN
    while (a<10) loop
    a:=a+1;
    DBMS_OUTPUT.PUT_LINE('value : ' || a);

    end loop;
END;
/
-- for loop
SET SERVEROUTPUT ON;

BEGIN
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('FOR Loop Value: ' || i);
    END LOOP;
END;
/

