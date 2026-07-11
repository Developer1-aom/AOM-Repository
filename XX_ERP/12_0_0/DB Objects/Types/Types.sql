CREATE OR REPLACE TYPE emp_obj AS OBJECT (
    emp_id      NUMBER,
    emp_name    VARCHAR2(100)
);
/

CREATE OR REPLACE TYPE emp_tab AS TABLE OF emp_obj;
/