-- 2.02 Activity 1
USE bank;
-- SELECT district_name, average_Salary FROM district WHERE 
SELECT A2 AS district_name, A11 AS average_salary FROM district WHERE A11>10000;
SELECT A2,A11 AS AS district_name, average_salary FROM district WHERE A11>10000;
SELECT * FROM loan WHERE status = 'B';
SELECT * from card WHERE type = 'junior' LIMIT 10;

-- 2.02 Activity 2
-- Select those loans whose contract finished and not paid back. Return the debt value together with loan and account ids

SELECT loan_id,account_id, amount FROM bank.loan WHERE status IN ('b','B');
-- Calculate the urban population for all districts. Return columns as district_name and urban_population.

SELECT count(*) FROM district;
SELECT * FROM district;
SELECT count(A2) FROM district;

SELECT A2,(A10/100)*A4 AS 'urban_population' FROM district;

-- Filter out districts where the rural population is greater than 50%.
SELECT A2,(A10/100)*A4 AS 'urban_population' FROM district WHERE A10 < '50';

-- 2.02 Activity 3
-- Simple queries
--    Get all junior cards issued last year.
SELECT * from card WHERE type ='junior' AND issued > 980000;

--    Get the first 10 transactions for withdrawals that are not in cash.
 SELECT * from trans 
 WHERE NOT operation = 'VYBER' 
 LIMIT 10;
  
 -- Select those loans whose contract finished and left a debt bigger than 1000. Return the debt value together with loan and account ids.
SELECT loan_id, account_id, amount-payments AS debt_value from loan 
WHERE status = 'B' AND (amount-payments > 1000);

-- 2.02 Activity 4
-- Simple queries
--    Get the biggest and the smallest transaction with non-zero values in the database (use the trans table in the bank database).
SELECT max(amount), min(amount) FROM bank.trans WHERE amount <> 0;
--    Get account information with an extra column year showing the opening year as 'YYYY'.
SELECT *, date_format(date, "%Y") FROM account;
