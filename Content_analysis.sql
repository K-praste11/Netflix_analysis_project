-- 1.	How many movies and TV shows are available on Netflix?

SELECT 
    COUNT(*) AS Titles_on_Netflix
FROM
    netflix_titles;

-- 2.	What are the most common genres available on Netflix?

SELECT 
    listed_in AS genres, COUNT(*) AS genres_count
FROM
    netflix_titles
GROUP BY listed_in
ORDER BY genres_count DESC;
 
 -- 3.	What are the top 10 most frequent movie directors on Netflix?
 
SELECT 
    director, COUNT(director) AS director_count
FROM
    netflix_titles
WHERE
    director IS NOT NULL
GROUP BY director
ORDER BY director_count DESC
LIMIT 10;

-- 4.	Which country has produced the most Netflix content?
SELECT 
    country, COUNT(*) AS content_count
FROM
    netflix_titles
WHERE
    country IS NOT NULL
GROUP BY country
ORDER BY content_count DESC;

-- 5.How many movies and TV shows were added to Netflix each year?

SELECT 
    COUNT(title) AS count_titles, release_year AS year
FROM
    netflix_titles
GROUP BY release_year;
 
-- 6.	What are the most common ratings assigned to Netflix content?
 
SELECT 
    rating, COUNT(*) AS rating_count
FROM
    netflix_titles
GROUP BY rating
ORDER BY rating_count DESC;

-- 7.	What is the average duration of movies on Netflix?
SELECT 
    ROUND(AVG(duration), 2) AS avg_duration
FROM
    netflix_titles
WHERE
    type = 'Movie';
    
    -- 8.	What is the distribution of content based on its type (Movies vs. TV Shows)?
SELECT 
    type, COUNT(*) AS content_count
FROM
    netflix_titles
GROUP BY type;
    
    -- 9.	What are the oldest and newest movies available on Netflix?
    
SELECT 
    MIN(release_year) AS oldest_movie_year,
    MAX(release_year) AS newest_movie_year
FROM
    netflix_titles
WHERE
    type = 'Movie'
;

-- 10.	Which actors/actresses have appeared in the most Netflix content?

SELECT 
    cast AS actor_or_actresses, COUNT(*) AS count_appearance
FROM
    netflix_titles
WHERE
    cast IS NOT NULL AND cast != ''
GROUP BY cast
ORDER BY count_appearance DESC;



