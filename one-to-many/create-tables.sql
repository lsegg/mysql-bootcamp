CREATE DATABASE relationships;
USE relationships;
CREATE TABLE Customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(128) UNIQUE
);
CREATE TABLE Orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_date DATE,
  price_amount DECIMAL(8, 2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
INSERT INTO Customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
  ('George', 'Michael', 'gm@gmail.com'),
  ('David', 'Bowie', 'david@gmail.com'),
  ('Blue', 'Steele', 'blue@gmail.com'),
  ('Bette', 'Davis', 'bette@aol.com');
INSERT INTO Orders (order_date, price_amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
  ('2017-11-11', 35.50, 1),
  ('2014-12-12', 800.67, 2),
  ('2015-01-03', 12.50, 2),
  ('1999-04-11', 450.25, 5);