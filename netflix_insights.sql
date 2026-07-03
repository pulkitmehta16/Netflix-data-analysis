-- How much content is Movies vs TV Shows?
SELECT type, COUNT(*) AS total_titles
FROM netflixtable
GROUP BY type;

-- Which countries produce most Netflix content?
SELECT country, COUNT(*) AS total
FROM netflixtable
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- What audience is Netflix targeting?
SELECT rating, COUNT(*) AS total
FROM netflixtable
GROUP BY rating
ORDER BY total DESC;

-- Average duration of movies
SELECT type,
round(AVG(duration),2) AS avg_duration
FROM netflixtable
where type='Movie';

-- oldest releases
SELECT title, release_year
FROM netflixtable
ORDER BY release_year
LIMIT 10;

-- How much recent content exists?
SELECT COUNT(*) AS recent_titles,
release_year
FROM netflixtable
WHERE release_year >= 2020
group by release_year;