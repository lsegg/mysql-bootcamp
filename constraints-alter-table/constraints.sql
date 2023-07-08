CREATE TABLE contacts (
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(15) NOT NULL UNIQUE
);
CREATE TABLE adults (
  name VARCHAR(20) NOT NULL,
  age INT CHECK (age > 18)
);
CREATE TABLE palindromes (
  word VARCHAR(100),
  CONSTRAINT is_palindrome CHECK(REVERSE(word) = word)
);
CREATE TABLE companies (
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  CONSTRAINT name_address UNIQUE (name, address)
);
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT profit CHECK(sale_price >= purchase_price)
);