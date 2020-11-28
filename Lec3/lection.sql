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

/* Select form query */
SELECT e.emp_id, e.fname, e.lname
FROM (SELECT emp_id , fname, lname, start_date, title FROM employee) e; 

/* View creation */ 
-- CREATE VIEW IF NOT EXISTS employee_vw AS 
-- SELECT emp_id, fname, lname , YEAR(start_date) start_year FROM employee;

/* Use this view */ 
SELECT emp_id, start_year FROM employee_vw;

/* Select + where */ 
SELECT emp_id , fname, lname, start_date, title 
FROM employee WHERE title = 'Head Teller';

/* Select + where AND block */ 
SELECT emp_id, fname, lname, start_date, title 
FROM employee WHERE title = 'Head Teller' AND start_date > '2005-01-01';

/* SELECT + WHERE OR block */ 
SELECT emp_id, fname, lname, start_date, title 
FROM employee WHERE title = 'Head Teller' OR start_date > '2005-01-01';


/* Select + where and/or block */ 
SELECT emp_id, fname, lname, start_date, title 
FROM employee WHERE (title='Head Teller' AND start_date > '2005-01-01') 
OR 
(title = 'Teller' AND start_date > '2007-01-01');


/* SELECT + ORDER BY */
SELECT open_emp_id, product_cd 
FROM account 
ORDER BY open_emp_id;

/* Select + order by desc */ 
SELECT account_id, product_cd, open_date, avail_balance FROM account 
ORDER BY avail_balance DESC;

/* Select + order by ___fed_id */ 
SELECT cust_id, cust_type_cd, city, state, fed_id 
FROM customer 
ORDER BY RIGHT(fed_id, 3);

/* Select + order by col1, col2 */
SELECT emp_id, title, start_date, fname, lname 
FROM employee
ORDER BY title, lname; 
