/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT features AS special_features, COUNT(*) FROM (SELECT UNNEST(special_features) AS features FROM film) AS n_table GROUP BY features ORDER BY special_features;
