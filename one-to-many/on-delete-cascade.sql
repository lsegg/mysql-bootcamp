CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50)
);
CREATE TABLE orders (
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_date DATE,
  amount DECIMAL(8, 2),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
);