CREATE OR REPLACE PACKAGE emp_pkg AS

    PROCEDURE update_salary(
        p_emp_id IN NUMBER,
        p_salary IN NUMBER
    );

    FUNCTION employee_count
    RETURN NUMBER;

END emp_pkg;
/

CREATE OR REPLACE PACKAGE BODY emp_pkg AS

    PROCEDURE update_salary(
        p_emp_id IN NUMBER,
        p_salary IN NUMBER
    )
    IS
    BEGIN
        UPDATE employee
           SET salary = p_salary
         WHERE emp_id = p_emp_id;

        COMMIT;
    END update_salary;

    FUNCTION employee_count
    RETURN NUMBER
    IS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM employee;

        RETURN v_count;
    END employee_count;

END emp_pkg;
/