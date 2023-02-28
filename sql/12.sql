/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT * FROM (SELECT title FROM (SELECT title, UNNEST(special_features) AS feature FROM film) AS tt_1 WHERE feature ILIKE '%Behind%') AS t_1 JOIN (SELECT title FROM (SELECT title, UNNEST(special_features) AS feature FROM film) AS tt_2 WHERE feature ILIKE '%Trailers%') AS t_2 USING (title) ORDER BY title;
