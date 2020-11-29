/* Exercises */
/* 4.1 */ 
-- 1, 2, 3, 5, 6, 7

/* 4.2 */
-- 4, 9

use bank;
/* 4.3 */
SELECT account_id FROM account WHERE YEAR(open_date) = 2002;

/* 4.4 */ 
SELECT fname, lname FROM individual WHERE lname LIKE '_a%e%';