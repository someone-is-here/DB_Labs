SELECT id, name, timing, likes, streaming, album_id FROM tracks;
SELECT id, name, release_date FROM albums;

SELECT id, login, email FROM abstract_users WHERE role_id=2; 
SELECT id, login, email FROM abstract_users WHERE role_id=1;
SELECT id, login, email FROM abstract_users WHERE role_id=3 ORDER BY login DESC;

SELECT COUNT(id) AS amount_of_users, role_id FROM abstract_users GROUP BY role_id HAVING COUNT(id) >= 3 ORDER BY amount_of_users ASC;

SELECT * FROM artists;

SELECT * FROM artists JOIN countries ON artists.country_id = countries.id WHERE iso in('GB', 'BL');

SELECT id, name from albums WHERE release_date BETWEEN 2010 AND 2015;

SELECT * FROM tracks WHERE timing > '03:00:00' AND (streaming > 1000000 AND likes > 50000000);

SELECT * FROM abstract_users WHERE email ILIKE '%user%';

SELECT * FROM artists LIMIT 3 OFFSET 2;

SELECT * FROM abstract_users;

UPDATE abstract_users SET email = 'User1@gmail.com' WHERE id=3;

SELECT * FROM abstract_users;
DELETE FROM abstract_users;
