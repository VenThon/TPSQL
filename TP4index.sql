#1.1
SELECT * FROM employees emp1, employees emp2 
WHERE emp1.emp_no!=emp2.emp_no AND emp1.first_name=emp2.first_name 
LIMIT 1000;

#1.2
SELECT * FROM employees emp1, employees emp2
WHERE emp1.emp_no!=emp2.emp_no AND emp1.first_name=emp2.first_name AND emp1.last_name=emp2.last_name
LIMIT 1000;

#1.3
SELECT * FROM employees
ORDER BY hire_date
LIMIT 10;

CREATE DATABASE i4c;