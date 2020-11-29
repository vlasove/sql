/* Lec4 : Filtrations. */
use bank;
/* Equality */ 

SELECT pt.name product_type, p.name product 
FROM product p INNER JOIN product_type pt 
ON p.product_type_cd = pt.product_type_cd
WHERE pt.name = 'Customer Accounts';

/* Un-Equality */ 
SELECT pt.name product_type, p.name product 
FROM product p INNER JOIN product_type pt 
ON p.product_type_cd = pt.product_type_cd
WHERE pt.name != 'Customer Accounts';

/* Entering a semi-range */ 
SELECT emp_id, fname, lname , start_date 
FROM employee 
WHERE start_date < '2008-01-01';

/* Entering a range */ 
SELECT emp_id, fname, lname, start_date 
FROM employee
WHERE start_date >= '2005-01-01' AND start_date < '2008-01-01';

/* Between operator */ 
SELECT emp_id, fname, lname, start_date
FROM employee
WHERE start_date BETWEEN '2005-01-01' AND '2008-01-01';

/* Numeric range */ 
SELECT account_id, product_cd, cust_id, avail_balance 
FROM account 
WHERE avail_balance BETWEEN 3000 AND 5000;


/* IN operator */ 
SELECT account_id, product_cd, cust_id, avail_balance
FROM account 
WHERE product_cd IN ('CHK', 'SAV', 'CD', 'MM');

/* SUB-query */ 
SELECT account_id, product_cd, cust_id, avail_balance
FROM account
WHERE product_cd IN (SELECT product_cd FROM product WHERE product_type_cd = 'ACCOUNT');

/* NOT in operator */ 
SELECT account_id , product_cd, cust_id, avail_balance
FROM account
WHERE product_cd NOT IN ('CHK', 'SAV', 'CD', 'MM');

/* LEFT check */
SELECT emp_id, fname, lname 
FROM employee
WHERE LEFT(lname, 1) = 'T';

/* LIKE mask */ 
SELECT lname 
FROM employee
WHERE lname LIKE '_a%e%';

/* NULL is ... */ 
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id IS NULL;

/* IS not NULL */ 
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id IS NOT NULL;


/* null + condition */ 
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id != 6 or superior_emp_id is NULL;