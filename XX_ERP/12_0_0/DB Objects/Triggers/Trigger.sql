CREATE OR REPLACE TRIGGER trg_employee_bi
BEFORE INSERT
ON employee
FOR EACH ROW
BEGIN
    IF :NEW.emp_id IS NULL THEN
        :NEW.emp_id := seq_employee.NEXTVAL;
    END IF;
END;
/