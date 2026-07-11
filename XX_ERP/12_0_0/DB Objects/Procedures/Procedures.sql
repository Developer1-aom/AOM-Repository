CREATE OR REPLACE PROCEDURE add_employee(
    p_name VARCHAR2,
    p_salary NUMBER
)
IS
BEGIN
    INSERT INTO employee
    VALUES (
        seq_employee.NEXTVAL,
        p_name,
        p_salary,
        SYSDATE
    );

    COMMIT;
END;
/