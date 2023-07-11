SELECT *
FROM Orders
WHERE customer_id = (
    SELECT id
    FROM customers
    WHERE last_name = 'George'
  );
-- Cross Join NOT USEFUL
SELECT *
FROM Customers,
  Orders;
-- INNER JOIN
SELECT first_name,
  last_name,
  order_date,
  price_amount
FROM Customers
  JOIN Orders ON Orders.customer_id = Customers.id;
-- same as (the order doesn't matter here)
SELECT first_name,
  last_name,
  order_date,
  price_amount
FROM Orders
  JOIN Customers ON Customers.id = Orders.customer_id;
-- join & group by
SELECT first_name,
  last_name,
  SUM(price_amount) as total
FROM Orders
  JOIN Customers ON Customers.id = Orders.customer_id
GROUP BY first_name,
  last_name
ORDER BY total DESC;
-- Left join
SELECT first_name,
  last_name,
  order_date,
  price_amount
FROM Customers
  LEFT JOIN Orders ON Orders.customer_id = Customers.id;
SELECT first_name,
  last_name,
  IFNULL(SUM(price_amount), 0) AS money_spent
FROM Customers
  LEFT JOIN Orders ON Customers.id = Orders.customer_id
GROUP BY first_name,
  last_name;
-- Inserting NULL customer_id so that RIGHT JOIN is different from LEFT JOIN
INSERT INTO Orders (price_amount, order_date)
VALUES (100, CURDATE());
-- RIGHT JOIN
SELECT first_name,
  last_name,
  order_date,
  price_amount
FROM Customers
  RIGHT JOIN Orders ON Orders.customer_id = Customers.id;