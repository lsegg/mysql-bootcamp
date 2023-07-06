CREATE TABLE people (
  name VARCHAR(100),
  birth_date DATE,
  birth_time TIME,
  birth DATETIME
);
INSERT INTO people
VALUES (
    'Elton',
    '2000-12-25',
    '11:00:00',
    '2000-12-25 11:00:00'
  ),
  (
    'Lulu',
    '1985-04-11',
    '9:45:10',
    '1985-04-11 9:45:10'
  ),
  (
    'Juan',
    '2020-08-15',
    '23:59:00',
    '2020-08-15 23:59:00'
  );
INSERT INTO people
VALUES('Hazel', CURDATE(), CURTIME(), NOW());