/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

SELECT DISTINCT first_name || ' ' || last_name AS "Actor Name" FROM (SELECT first_name, last_name, UNNEST(special_features) AS feature FROM actor JOIN film_actor USING (actor_id) JOIN film USING (film_id)) AS n_table WHERE feature ILIKE '%Behind%' ORDER BY "Actor Name";
