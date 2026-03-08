CREATE DATABASE netflix_db;
USE netflix_db;
CREATE TABLE netflix_titles (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(300),
    director VARCHAR(300),
    cast TEXT,
    country VARCHAR(200),
    date_added DATE,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in VARCHAR(200),
    description TEXT
);
SELECT * FROM netflix_titles;
SELECT COUNT(*) AS total_titles
FROM netflix_titles;
SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;