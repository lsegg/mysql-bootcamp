SELECT title,
  rating
FROM series
  JOIN reviews ON series.id = reviews.series_id
ORDER BY title;
SELECT title,
  ROUND(AVG(rating), 2) AS avg_rating
FROM series
  JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating ASC;
SELECT first_name,
  last_name,
  rating
FROM reviewers
  JOIN reviews ON reviewers.id = reviews.reviewer_id;
SELECT title as unreviewed_series
FROM series
  LEFT JOIN reviews ON series.id = reviews.series_id
WHERE ISNULL(reviewer_id);
SELECT genre,
  ROUND(AVG(rating), 2) AS avg_rating
FROM series
  JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;
SELECT first_name,
  last_name,
  COUNT(rating) AS 'COUNT',
  IFNULL(MIN(rating), 0) AS 'MIN',
  IFNULL(MAX(rating), 0) AS 'MAX',
  IFNULL(ROUND(AVG(rating), 2), 0) AS 'AVG',
  CASE
    WHEN COUNT(rating) > 0 THEN 'Active'
    ELSE 'Inactive'
  END AS 'STATUS'
FROM reviewers
  LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name,
  last_name;
-- same as
SELECT first_name,
  last_name,
  COUNT(rating) AS count,
  IFNULL(MIN(rating), 0) AS min,
  IFNULL(MAX(rating), 0) AS max,
  ROUND(IFNULL(AVG(rating), 0), 2) AS average,
  IF(
    COUNT(rating) > 0,
    'ACTIVE',
    'INACTIVE'
  ) AS status
FROM reviewers
  LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name,
  last_name;
SELECT title,
  rating,
  CONCAT(first_name, ' ', last_name) AS reviewer
from reviews
  LEFT JOIN reviewers ON reviewers.id = reviews.reviewer_id
  LEFT JOIN series ON series.id = reviews.series_id;