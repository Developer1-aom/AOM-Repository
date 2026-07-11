CREATE MATERIALIZED VIEW employee_mv
BUILD IMMEDIATE
REFRESH COMPLETE
ON DEMAND
AS
SELECT emp_id,
       emp_name,
       salary
FROM employee;