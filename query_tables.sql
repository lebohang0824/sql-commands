-- 1. SELECT ALL records from table Customers.
SELECT * FROM customers;

-- 2. SELECT records only from the name column in the Customers table.
SELECT firstname FROM customers;

-- 3. Show the name of the Customer whose CustomerID is 1.
SELECT firstname FROM customers WHERE customerID = 1;

-- 4. UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
UPDATE customers SET firstname = 'Lerato', lastname = 'Mabitso' WHERE customerID = 1;

-- 5. DELETE the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM customers WHERE customerID = 2;

-- 6. Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
SELECT DISTINCT COUNT(status) FROM orders;

-- 7. Return the MAXIMUM payment made on the PAYMENTS table.
SELECT MAX(amount) FROM payments;

-- 8. Select all customers from the “Customers” table, sorted by the “Country” column.
SELECT * FROM customers ORDER BY country;

-- 9. Select all products with a price BETWEEN R100 and R600.
SELECT * FROM products WHERE buyprice BETWEEN 100 AND 600;

-- 10. Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.
SELECT * FROM customers WHERE country = 'Germany' AND city = 'Berlin';

-- 11. Select all fields from “Customers” where city is “Cape Town” OR “Durban”.
SELECT * FROM customers WHERE city = 'Cape Town' or city = 'Durban';

-- 12. Select all records from Products where the Price is GREATER than R500.
SELECT * FROM products WHERE buyprice > 500;

-- 13. Return the sum of the Amounts on the Payments table.
SELECT SUM(amount) FROM payments;

-- 14. Count the number of shipped orders in the Orders table.
SELECT COUNT(orderid) FROM orders;

-- 15. Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
SELECT AVG(buyprice) as rands, AVG(buyprice /12) as dollars FROM products;

-- 16. Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT * FROM payments INNER JOIN customers ON payments.customerid = customers.customerid;

-- 17. Select all products that have turnable front wheels.
SELECT * FROM products WHERE description LIKE '%Turnable front wheels%';
