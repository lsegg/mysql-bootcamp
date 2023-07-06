SELECT birth_date,
  DAY(birth_date)
FROM people;
SELECT birth_date,
  DAYOFMONTH(birth_date),
  DAYOFWEEK(birth_date),
  DAYOFYEAR(birth_date)
FROM people;
SELECT birth_date,
  MONTHNAME(birth_date)
FROM people;
SELECT name,
  birth,
  YEAR(birth)
FROM people;
SELECT name,
  birth_time,
  HOUR(birth_time),
  MINUTE(birth_time),
  SECOND(birth_time)
FROM people;
SELECT birth,
  DATE(birth),
  TIME(birth)
FROM people;
SELECT birth,
  DATE_FORMAT(birth, '%a, %b %D at %H:%i')
FROM people;
SELECT birth_date,
  DATEDIFF(CURDATE(), birth) AS days_ago
FROM people;
SELECT birth_date,
  DATE_ADD(birth_date, INTERVAL 18 YEAR) AS legal_age
FROM people;
-------
CREATE TABLE inventory (
  item_name VARCHAR (100),
  price FLOAT,
  quantity INT
);
SELECT CURTIME();
SELECT CURDATE();
SELECT DATE_FORMAT(CURDATE(), '%W (day %w of the week)') AS today;
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y') AS USA_format;
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i') AS now;