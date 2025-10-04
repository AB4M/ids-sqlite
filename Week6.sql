-- Perform Basic Analysis
SELECT COUNT(*) AS total_rows FROM university_rankings;
SELECT year, COUNT(*) AS n FROM university_rankings GROUP BY year ORDER BY year;
SELECT COUNT(DISTINCT country) AS num_countries FROM university_rankings;
SELECT year, ROUND(AVG(score),2) AS avg_score FROM university_rankings GROUP BY year ORDER BY year;
SELECT world_rank, institution, country, score
FROM university_rankings
WHERE year = 2014
ORDER BY world_rank
LIMIT 10;

-- CRUD operation 1
INSERT INTO university_rankings (
    world_rank, institution, country, score, year
) VALUES (
    350, 'Duke Tech', 'USA', 60.5, 2014
);

-- CRUD operation 2
SELECT COUNT(*) AS jp_top200_2013
FROM university_rankings
WHERE country = 'Japan'
  AND year = 2013
  AND world_rank <= 200;

-- CRUD operation 3
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford'
  AND year = 2014;

-- CRUD operation 4
DELETE FROM university_rankings
WHERE year = 2015
  AND score < 45;
SELECT COUNT(*) FROM university_rankings WHERE year=2015 AND score < 45;
