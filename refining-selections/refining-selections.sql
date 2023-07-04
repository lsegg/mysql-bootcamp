SELECT *
FROM books;
SELECT DISTINCT released_year
FROM books;
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS authors_list
FROM books;
-- same as
SELECT DISTINCT author_fname,
  author_lname
FROM books;
SELECT book_id,
  author_lname
FROM books
ORDER BY author_lname;
-- passing the index of the sorting column
SELECT book_id,
  author_fname,
  author_lname,
  pages
FROM books
ORDER BY 4;
--multiple order sorting
SELECT author_fname,
  author_lname
FROM books
ORDER BY author_lname,
  author_fname;
SELECT title AS top_recent_books
FROM books
ORDER BY released_year
LIMIT 5;
SELECT title
FROM books
WHERE title LIKE '%:%';
SELECT *
FROM books
WHERE author_fname LIKE '____';
----
SELECT title
FROM books
WHERE title LIKE '%stories%';
SELECT title,
  pages
FROM books
ORDER BY pages DESC
LIMIT 1;
SELECT CONCAT(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;
SELECT title,
  author_lname
FROM books
WHERE author_lname LIKE '% %';
SELECT title,
  released_year,
  stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;
SELECT title,
  author_lname
FROM books
ORDER BY author_lname,
  title;
SELECT UPPER(
    CONCAT(
      'My favorite author is ',
      author_fname,
      ' ',
      author_lname,
      '!'
    )
  ) AS yell
FROM books
ORDER BY author_lname;