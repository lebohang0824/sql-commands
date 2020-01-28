-- Customers table
INSERT INTO customers (customerid, firstname, lastname, gender, address, phone, email, city, country) VALUES
(1,	'John', 'Hilbert', 'Male', '284 Chaucer St', 84789657, 'John@gmail.com', 'Johannesburg', 'South Africa'),
(2,	'Thando', 'Sithole', 'Female', '240 Sect 1', 794445584, 'thando@gmail.com', 'Cape Town', 'South AFrica'),
(3,	'Leon',	'Glen', 'Male',	'81 Everton Rd, Gillits', 820832830, 'leon@gmail.com', 'Durban', 'South AFrica'),
(4,	'Charl', 'Muller', 'Male', '290A Dorset Ecke', 856872553, 'charl.muller@yahoo.com', 'Berlin', 'Germany'),
(5,	'Julia', 'Stein', 'Female', '2 Wernerring',	867244505, 'js234@yahoo.com', 'Frankfurt', 'Germany');

-- Employees table
INSERT INTO employees (employeeid, firstname, lastname, email, jobtitle) VALUES
(1,	'Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
(2,	'Lesly', 'Cronje', 'lesc@gmail.com', 'Clerk'),
(3,	'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

-- Products table
INSERT INTO products (productid, productname, description, buyprice) VALUES
(1,	'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',	150.75),
(2,	'Classic Car', 'Turnable front wheels, steering function', 550.75),
(3,	'Sports Car', 'Turnable front wheels, steering function', 700.60);

-- Payments table
INSERT INTO payments (customerid, paymentid, paymentdate, amount) VALUES
(1,	1, '2018-01-09', 150.75),
(5,	2, '2018-03-09', 150.75),
(4,	3, '2018-03-09', 700.60);

-- Orders table
INSERT INTO orders (orderid, productid, paymentid, fulfilledbyemployeeid, daterequired, dateshipped, status) VALUES
(1,	1, 1, 2, '2018-05-09', NULL, 'Not Shipped'),
(2,	1, 2, 2, '2018-04-09', '2018-03-09', 'Shipped'),
(3,	3, 3, 3, '2018-04-09', NULL, 'Not Shipped');
