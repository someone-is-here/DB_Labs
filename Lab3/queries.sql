select id, name, timing, likes, streaming, album_id from tracks;
select id, name, release_date from albums;

select id, login, email from abstract_users where role_id=2; 
select id, login, email from abstract_users where role_id=1;
select id, login, email from abstract_users where role_id=3 ORDER BY login DESC;

select COUNT(id) as amount_of_users, role_id from abstract_users group by role_id HAVING COUNT(id) >= 3 order by amount_of_users ASC;

select * from artists;

select * from artists JOIN countries ON artists.country_id = countries.id WHERE iso in('GB', 'BL');

select id, name from albums where release_date BETWEEN 2010 and 2015;

select * from tracks WHERE timing > '03:00:00' AND (streaming > 1000000 AND likes > 50000000);

select * from albums;
