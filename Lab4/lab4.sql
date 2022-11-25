SELECT id, name, country_id, website, tour_dates FROM artists WHERE country_id IN(217, 218) AND tour_dates > 0;
SELECT id, name, country_id, website, tour_dates FROM artists WHERE country_id BETWEEN 217 AND 218 AND tour_dates > 0;
SELECT id, name, country_id, website, tour_dates FROM artists WHERE country_id BETWEEN 217 AND 218 AND tour_dates > 0  ORDER BY name DESC;
SELECT id, login, email FROM abstract_users WHERE role_id=3 ORDER BY login DESC;
SELECT id, name, timing FROM tracks WHERE timing > '03:00:00' AND (streaming > 1000000 AND likes > 50000000);
SELECT id, abstr_user_id, message FROM logging WHERE abstr_user_id IN (SELECT id FROM abstract_users WHERE role_id=3);

-- SELECT id, name, country_id FROM artists WHERE country_id >= ANY (SELECT id FROM countries WHERE id IN(100, 250));
-- SELECT id, abstr_user_id, message 
-- FROM logging 
-- WHERE abstr_user_id < ALL (SELECT id FROM abstract_users WHERE id > 7 AND role_id = 2);

SELECT artists.id, name, countries.title, abstract_users.email, abstract_users.login from artists
INNER JOIN countries ON artists.country_id=countries.id
INNER JOIN abstract_users ON artists.id = abstract_users.id; 

SELECT artists.id, name, artists.tour_dates, countries.title, countries.iso from artists
LEFT JOIN countries ON artists.country_id=countries.id 
WHERE artists.tour_dates > 3;

-- similar results
SELECT artists.id, name, countries.title, countries.iso from artists
RIGHT JOIN countries ON artists.country_id=countries.id;

SELECT artists.id, artists.name, title, iso from countries
LEFT JOIN artists ON artists.country_id=countries.id;
--

SELECT artists.id, artists.name, instruments.title as instruments from artists
INNER JOIN artist_instrument ON artist_instrument.artist_id=artists.id
INNER JOIN instruments ON artist_instrument.instrument_id = instruments.id;

SELECT artists.id, artists.name, albums.name as album_name, albums.release_date from artists
INNER JOIN artist_album ON artist_album.artist_id=artists.id
INNER JOIN albums ON artist_album.album_id = albums.id;

SELECT COUNT(id) AS amount_of_users, role_id FROM abstract_users GROUP BY role_id HAVING COUNT(id) >= 3 ORDER BY amount_of_users ASC;

SELECT roles.role, COUNT(abstract_users.id) from abstract_users
INNER JOIN roles ON abstract_users.role_id = roles.id
GROUP BY roles.role;

SELECT roles.role, COUNT(abstract_users.id) from abstract_users
INNER JOIN roles ON abstract_users.role_id = roles.id
GROUP BY roles.role HAVING COUNT(abstract_users.id) >= 3;


-- self join
SELECT A.name AS name1, B.name AS name2, A.country_id
from artists A, artists B
WHERE A.id <> B.id
AND A.country_id = B.country_id
ORDER BY name1; 

SELECT abstract_users.id, login, roles.role from abstract_users 
INNER JOIN roles ON roles.id=abstract_users.role_id
WHERE 
EXISTS(SELECT role_id from abstract_users WHERE role_id=3)
AND login LIKE '%user%';

EXPLAIN SELECT * FROM abstract_users WHERE id=3;
EXPLAIN(ANALYZE) SELECT * FROM abstract_users WHERE id=3;

SELECT tour_dates, name, website,
CASE
    WHEN tour_dates > 0 THEN 'Concerts'
    ELSE 'No concerts'
END AS Concerts
FROM artists;
