SELECT COUNT(*)
FROM books;
SELECT released_year,
  COUNT(*) AS books_released
FROM books
GROUP BY released_year;
SELECT SUM(stock_quantity) AS books_in_stock
FROM books;
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  AVG(released_year)
FROM books
GROUP BY author;
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS pages_written
FROM books
GROUP BY author
ORDER BY pages_written DESC
LIMIT 1;
-- same as
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
  pages
FROM books
WHERE pages = (
    SELECT MAX(pages)
    FROM books
  );
SELECT released_year AS year,
  COUNT(*) AS books,
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY year
ORDER BY year;