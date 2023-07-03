SELECT CONCAT(author_fname, ' ', author_lname) AS author_fullname
FROM books;
SELECT CONCAT_WS(' - ', title, CONCAT(author_fname, author_lname)) AS books_and_authors
FROM books;
SELECT CONCAT(SUBSTRING(title, 1, 15), '...') AS title_abreviation
FROM books;
SELECT SUBSTRING(author_fname, 1, 1) AS author_abreviation,
  author_lname
FROM books;
SELECT CONCAT(
    SUBSTRING(author_fname, 1, 1),
    '.',
    SUBSTRING(author_lname, 1, 1),
    '.'
  ) AS author_initials
FROM books;
SELECT REPLACE(title, ' ', '-') AS title_code
FROM books;
SELECT CONCAT(author_fname, ' ', REVERSE(author_fname)) AS author_palindrome
FROM books;
SELECT CHAR_LENGTH(title) AS title_length,
  title
FROM books;
SELECT CONCAT(
    UPPER(SUBSTRING(title, 1, 1)),
    LOWER(SUBSTRING(title, 2))
  ) AS title_formatted
FROM books;
--
SELECT UPPER(
    REVERSE('Why does my cat look at me with such hatred?')
  ) AS reverse_and_upper;
SELECT REPLACE(
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
  ) AS concatenated_and_snaked_cased;
--
SELECT REPLACE(title, ' ', '->') AS title
FROM books;
SELECT author_lname AS forwards,
  REVERSE(author_lname) AS backwards
FROM books;
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;
SELECT CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;
SELECT title,
  CHAR_LENGTH(title) AS 'character count'
FROM books;
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
  CONCAT_WS(',', author_lname, author_fname) AS author,
  CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;