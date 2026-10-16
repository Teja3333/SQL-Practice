
-- Increase price by Rs. 100 (display only; does not update stored prices)
SELECT product_id, product_name,
       price + 100 AS increased_price
FROM myntrastore;

-- Decrease price by Rs. 200 (display only)
SELECT product_id, product_name,
       price - 200 AS reduced_price
FROM myntrastore;

-- Apply a 25% discount (display only)
SELECT product_id, product_name, price,
       price - (price * 25 / 100) AS discount_price
FROM myntrastore;

-- Increase price by 5% (display only)
SELECT product_id, product_name, price,
       price + (price * 5 / 100) AS increased_price
FROM myntrastore;

-- Apply a 5% discount (display only)
SELECT product_id, product_name, price,
       price - (price * 5 / 100) AS discount_price
FROM myntrastore;

-- Price formulas:
-- Discount amount = Price * Discount percentage / 100
-- Discounted price = Price - Discount amount
-- Increased price = Price + (Price * Increase percentage / 100)

-- Example for a price of Rs. 50,000:
-- Increase by Rs. 100 = Rs. 50,100
-- Decrease by Rs. 200 = Rs. 49,800
-- 25% discount = Rs. 37,500
-- 5% increase = Rs. 52,500
-- 5% discount = Rs. 47,500

-- =========================================================
-- 8. COLUMN ALIASES
-- AS gives a temporary name to a column in the query output.
-- =========================================================

SELECT product_id, product_name,
       price - (price * 25 / 100) AS discount_price
FROM myntrastore;

-- =========================================================
-- 9. STAFF SALARY CALCULATIONS
-- Assumes the staff table has staffid and salary columns.
-- =========================================================

-- Display staff ID and annual salary
SELECT staffid,
       salary * 12 AS annual_salary
FROM staff;

-- Display monthly, half-yearly and annual salary
SELECT staffid,
       salary,
       salary * 6 AS half_yearly_salary,
       salary * 12 AS annual_salary
FROM staff;

-- Calculate a 10% salary increase in the output only
SELECT staffid,
       salary,
       salary * 1.10 AS increased_salary
FROM staff;

-- Salary formulas:
-- Half-yearly salary = Monthly salary * 6
-- Annual salary = Monthly salary * 12
-- Salary after a 10% increase = Monthly salary * 1.10

-- =========================================================
-- 10. IMPORTANT SQL COMMANDS
-- =========================================================

-- CREATE DATABASE : Creates a database
-- USE              : Selects a database
-- SHOW DATABASES   : Lists databases
-- SHOW TABLES      : Lists tables
-- CREATE TABLE     : Creates a table
-- DESC             : Shows table structure
-- INSERT INTO      : Inserts records
-- SELECT           : Retrieves records
-- UPDATE           : Modifies existing records
-- DELETE           : Deletes records
-- ALTER TABLE      : Changes table structure
-- TRUNCATE TABLE   : Removes all rows
-- DROP TABLE       : Removes a table
-- WHERE            : Filters rows
-- AND              : Requires both conditions to be true
-- OR               : Requires at least one condition to be true
-- IN               : Matches values from a list
-- IS NULL          : Finds NULL values
-- AS               : Assigns an alias