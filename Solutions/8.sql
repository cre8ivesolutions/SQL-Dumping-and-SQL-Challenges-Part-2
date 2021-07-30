-- This query can be used to find that the movie_id is 21 (movie_name is La La Land)
-- SELECT * FROM movies 
-- WHERE release_year IS NULL;

UPDATE movies 
SET release_year = 2016 
WHERE movie_id = 21;