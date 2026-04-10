USE cinestats;

-- a) All movies
SELECT * FROM movies;

-- b) All directors
SELECT * FROM directors;

-- c) Count movies
SELECT COUNT(*) AS total_movies FROM movies;


-- d) Find 3 specific directors
SELECT * FROM directors
WHERE name IN ('James Cameron', 'Luc Besson', 'John Woo');


-- e) Directors starting with S
SELECT * FROM directors
WHERE name LIKE 'S%';

-- f) Count female directors
SELECT COUNT(*) AS female_directors 
FROM directors
WHERE gender = 'F';


-- g) 10th first women director
SELECT name FROM directors
WHERE gender = 'F'
ORDER BY name ASC
LIMIT 1 OFFSET 9;


-- h) 3 most popular movies
SELECT title, popularity FROM movies
ORDER BY popularity DESC
LIMIT 3;


-- i) 3 most bankable movies
SELECT title, revenue FROM movies
ORDER BY revenue DESC
LIMIT 3;


-- j) Average vote of awarded movies since 2000
SELECT AVG(vote_average) AS avg_vote FROM movies
WHERE release_date >= '2000-01-01'
AND award = 1;

-- k) Movies by Brenda Chapman
SELECT m.title FROM movies m
JOIN directors d ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';


-- l) Director with most movies
SELECT d.name, COUNT(m.id) AS total_movies
FROM directors d
JOIN movies m ON d.id = m.director_id
GROUP BY d.name
ORDER BY total_movies DESC
LIMIT 1;


-- m) Most bankable director
SELECT d.name, SUM(m.revenue) AS total_revenue
FROM directors d
JOIN movies m ON d.id = m.director_id
GROUP BY d.name
ORDER BY total_revenue DESC
LIMIT 1;



