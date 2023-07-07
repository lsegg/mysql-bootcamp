SELECT title,
  author_lname,
  released_year
FROM books
WHERE released_year > 2010
  AND author_lname = 'Eggers';
SELECT title,
  author_lname,
  released_year
FROM books
WHERE released_year > 2010
  AND author_lname = 'Eggers'
  AND title LIKE '%novel%';
SELECT title,
  pages
FROM books
WHERE CHAR_LENGTH(title) > 30
  AND pages > 500;
SELECT title,
  author_lname
FROM books
WHERE author_lname = 'Eggers'
  AND released_year > 2010;
SELECT title,
  author_lname,
  released_year
FROM books
WHERE author_lname = 'Eggers'
  OR released_year > 2010;
SELECT title,
  pages
FROM books
WHERE pages < 200
  OR title LIKE '%stories%';
SELECT title,
  released_year
FROM books
WHERE released_year BETWEEN 2004 AND 2014;
SELECT *
FROM people
WHERE birthtime BETWEEN CAST('12:00:00' AS TIME)
  AND CAST('16:00:00' AS TIME);
SELECT *
FROM people
WHERE HOUR(birthtime) BETWEEN 12 AND 16;
SELECT title,
  author_lname
FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
SELECT title,
  released_year
FROM books
WHERE released_year >= 2000
  AND released_year % 2 = 1;
SELECT title,
  released_year,
  CASE
    WHEN released_year >= 2000 THEN 'Modern literature'
    ELSE '20th Century literature'
  END AS genre
FROM books;
DELETE FROM books
WHERE title IS NULL;