-- Customers table
CREATE TABLE customers (
    customerID SERIAL PRIMARY KEY,
    firstname varchar(50),
    lastname varchar(50),
    gender varchar,
    address varchar(200),
    phone int,
    email varchar(100),
    city varchar(20),
    country varchar(50)
);

-- Employees table 
CREATE TABLE employees (
    employeeID SERIAL PRIMARY KEY,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(100),
    jobTitle varchar(20)
);

-- Products table
CREATE TABLE products (
    productID SERIAL PRIMARY KEY,
    productName varchar(100),
    description varchar(300),
    buyPrice decimal
);

-- Payments table
CREATE TABLE payments (
    paymentID SERIAL PRIMARY KEY,
    customerID int REFERENCES customers(customerID),
    paymentDate varchar(50),
    amount decimal
);

-- Orders table
CREATE TABLE orders (
    orderID SERIAL PRIMARY KEY,
    productID int REFERENCES products(productID),
    paymentID int REFERENCES payments(paymentID),
    fulfilledByEmployeeID int REFERENCES employees(employeeID),
    dateRequired timestamp,
    dateShipped timestamp,
    status varchar(20)
);