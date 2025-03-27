set serveroutput on; 

-- explicit cursor

DECLARE
    CURSOR emp_cur IS
        SELECT * FROM hr.employees;
    emp_record emp_cur%ROWTYPE; -- Use cursor variable type for flexibility
BEGIN
    for emp_record in emp_cur 
    loop
    DBMS_OUTPUT.PUT_LINE('Ename: ' || ' : '  || emp_record.first_name);
    END LOOP;

   
END;
/

select * from hr.employees;

/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR emp_cur IS
        SELECT rowid, first_name FROM hr.employees;
BEGIN
    FOR emp_record IN emp_cur LOOP
        DBMS_OUTPUT.PUT_LINE('Ename: ' ||  ' : ' || emp_record.rowid);
    END LOOP;
END;
/

SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cur IS
        SELECT first_name, salary, department_id FROM hr.employees;
    emp_record emp_cur%ROWTYPE;
    new_salary NUMBER;
BEGIN
    OPEN emp_cur;

    LOOP
        FETCH emp_cur INTO emp_record;
        EXIT WHEN emp_cur%NOTFOUND;

        -- Apply salary decrement based on department_id condition
        IF emp_record.department_id IN (16, 19) THEN
            new_salary := emp_record.salary * 0.90; -- 10% decrement
        ELSE
            new_salary := emp_record.salary * 0.80; -- 20% decrement
        END IF;

        -- Display result
        DBMS_OUTPUT.PUT_LINE('Ename: ' || emp_record.first_name ||
                             ', Original Salary: ' || emp_record.salary ||
                             ', New Salary: ' || new_salary);
    END LOOP;

    CLOSE emp_cur;
END;
/


-- ** REF CURSOR
DECLARE
    -- Step 1: Define a REF CURSOR type
    TYPE emp_ref_cursor IS REF CURSOR;

    -- Step 2: Declare a REF CURSOR variable
    emp_cur emp_ref_cursor;

    -- Step 3: Declare a record to store fetched data
    emp_name VARCHAR2(50);
    emp_rowid ROWID;
BEGIN
    -- Step 4: Open REF CURSOR with a query
    OPEN emp_cur FOR 
        SELECT first_name, rowid FROM hr.employees;

    -- Step 5: Fetch and Display Data
    LOOP
        FETCH emp_cur INTO emp_name, emp_rowid;
        EXIT WHEN emp_cur%NOTFOUND;  -- Stop when no more data

        -- Step 6: Print output
        DBMS_OUTPUT.PUT_LINE('Ename: ' || emp_name || ' : ROWID -> ' || emp_rowid);
    END LOOP;

    -- Step 7: Close REF CURSOR
    CLOSE emp_cur;
END;
/



    