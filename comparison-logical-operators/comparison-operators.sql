SELECT *
FROM books
WHERE released_year != 2017;
SELECT *
FROM books
WHERE title NOT LIKE '%The%';
SELECT *
FROM books
WHERE released_year > 2005;
SELECT *
FROM books
WHERE pages > 500;
SELECT *
FROM books
WHERE pages < 200;
SELECT *
FROM books
WHERE released_year < 2000;
SELECT *
FROM books
WHERE released_year <= 1985;