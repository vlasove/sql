/* Queries alphabet */ 
use bank;

/* Simple selection */
SELECT emp_id, fname, lname 
FROM employee;

/* SELECT inspect */ 
SELECT * FROM department;

SELECT name FROM department;

/* Literal queries */ 
SELECT emp_id, 'ACTIVE' activator, emp_id * 3.14, UPPER(lname) FROM employee;

/* Config Info selection */
SELECT VERSION(), USER(), DATABASE();

/* Duplicate descending */ 

SELECT DISTINCT cust_id FROM account;