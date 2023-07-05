SELECT COUNT(DISTINCT(CONCAT(author_fname, author_lname))) AS author_quantity
FROM books;
SELECT COUNT(*)
FROM books
WHERE title LIKE '%the%';
SELECT author_lname,
  COUNT(*) AS books_written
FROM books
GROUP BY author_lname
ORDER BY books_written DESC;
SELECT released_year,
  COUNT(*) AS books_published
FROM books
GROUP BY released_year;
SELECT *
FROM books
ORDER BY pages DESC
LIMIT 1;
-- same as
SELECT title,
  pages
FROM books
WHERE pages = (
    --subquery
    SELECT MAX(pages)
    FROM books
  );
SELECT title,
  released_year
FROM books
WHERE released_year = (
    SELECT MIN(released_year)
    FROM books
  );
SELECT author_fname,
  author_lname,
  COUNT(*)
FROM books
GROUP BY author_fname,
  author_lname;
-- same as
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  COUNT(*)
FROM books
GROUP BY author;
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  MIN(released_year) AS first_published
FROM books
GROUP BY author;
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  COUNT(*) AS books_written,
  MIN(released_year) AS first_published,
  MAX(released_year) AS last_published
FROM books
GROUP BY author;
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  SUM(pages) AS pages_written
FROM books
GROUP BY author;
SELECT AVG(pages)
FROM books;