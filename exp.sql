set serveroutput on; 

-- explicit cursor

DECLARE
    CURSOR emp_cur IS
        SELECT * FROM hr.employees;
    emp_record emp_cur%ROWTYPE; -- Use cursor variable type for flexibility
BEGIN
    OPEN emp_cur;
    FETCH emp_cur INTO emp_record;

    WHILE emp_cur%FOUND LOOP
        DBMS_OUTPUT.PUT_LINE('Ename: ' || ' : '  || emp_record.first_name);
        FETCH emp_cur INTO emp_record; -- Fetch next record
    END LOOP;

    CLOSE emp_cur;
END;
/




