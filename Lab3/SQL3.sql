-- DROP DATABASE IF EXISTS "StreamingServiceDB";

-- CREATE DATABASE "StreamingServiceDB"
--     WITH
--     OWNER = postgres
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'English_Dominica.1251'
--     LC_CTYPE = 'English_Dominica.1251'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1
--     IS_TEMPLATE = False;
CREATE EXTENSION pgcrypto;

CREATE TABLE IF NOT EXISTS roles(
	id SMALLSERIAL PRIMARY KEY,
	role VARCHAR(100) NOT NULL UNIQUE	
);

INSERT INTO roles(role) VALUES
('admin'),
('artist'),
('user');

CREATE TABLE IF NOT EXISTS abstract_users(
	id BIGSERIAL PRIMARY KEY,
	role_id SMALLSERIAL,
	login VARCHAR(100) NOT NULL UNIQUE,
	email VARCHAR(256) NOT NULL UNIQUE,
	password TEXT NOT NULL,
	CONSTRAINT fk_role FOREIGN KEY(role_id) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO abstract_users(role_id, login, email, password) VALUES
(1, 'admin', 'admin@gmail.com', crypt('admin123!', gen_salt('bf'))),
(2, 'ariana34', 'ariana_grande@gmail.com', crypt('arGr123!H', gen_salt('bf'))),
(3, 'user1', 'myEmail@gmail.com', crypt('UseErM13!', gen_salt('bf'))),
(3, 'user2', 'user2@gmail.com', crypt('U2s2M13!', gen_salt('bf'))),
(3, 'user3', 'user3@gmail.com', crypt('U3se3E!', gen_salt('bf')));

INSERT INTO abstract_users(role_id, login, email, password) VALUES
(2, 'zayn', 'zayn@gmail.com', crypt('z56cvGhs!', gen_salt('bf'))),
(2, 'adel', 'Adel574@gmail.com', crypt('bvj34!!', gen_salt('bf'))),
(2, 'harryS', 'harryS@gmail.com', crypt('HarrSt34!', gen_salt('bf'))),
(2, 'edSheeran', 'ed@gmail.com', crypt('EdSher41!', gen_salt('bf')));
	
INSERT INTO abstract_users(role_id, login, email, password) VALUES
(2, 'imagineDr', 'dr_im@gmail.com', crypt('iDr345!c!', gen_salt('bf')));

CREATE TABLE IF NOT EXISTS logging(
	id BIGSERIAL PRIMARY KEY,
	abstr_user_id BIGSERIAL,
	message VARCHAR(500) NOT NULL,
	CONSTRAINT fk_abstr_user FOREIGN KEY(abstr_user_id) REFERENCES abstract_users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS subscriptions(
	id SMALLSERIAL PRIMARY KEY,
	title VARCHAR(150) NOT NULL UNIQUE,
	cost MONEY CHECK(cost >= 0::MONEY)
);

INSERT INTO subscriptions(title, cost) VALUES
('Year', 134.56),
('Month', 13.00),
('Week', 2.09);

CREATE TABLE IF NOT EXISTS users(
	abstr_user_id BIGSERIAL,
	subscription_id SMALLSERIAL,
	CONSTRAINT fk_abstr_user FOREIGN KEY(abstr_user_id) REFERENCES abstract_users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_subscription FOREIGN KEY(subscription_id) REFERENCES subscriptions(id) ON UPDATE CASCADE ON DELETE SET NULL	
);

INSERT INTO users(abstr_user_id, subscription_id) VALUES
(3, 2),
(5, 1);

INSERT INTO logging(abstr_user_id, message) VALUES
(3, 'Get a month subscription'),
(5, 'Get a year subscription');

CREATE TABLE countries(
	id SMALLSERIAL PRIMARY KEY,
	title VARCHAR(56) NOT NULL UNIQUE,
	iso	VARCHAR(2) NOT NULL UNIQUE
);

INSERT INTO countries (title, iso) VALUES 
('Afghanistan', 'AF'), 
('Albania', 'AL'),
('Algeria', 'DZ'),
('American Samoa', 'AS'),
('Andorra', 'AD'),
('Angola', 'AO'),
('Anguilla', 'AI'),
('Antarctica', 'AQ'),
('Antigua and Barbuda', 'AG'),
('Argentina', 'AR'),
('Armenia', 'AM'),
('Aruba', 'AW'),
('Australia', 'AU'), 
('Austria', 'AT'),
('Azerbaijan', 'AZ'),
('Bahamas', 'BS'),
('Bahrain', 'BH'),
('Bangladesh', 'BD'),
('Barbados', 'BB'),
('Belarus', 'BY'),
('Belgium', 'BE'),
('Belize', 'BZ'),
('Benin', 'BJ'),
('Bermuda', 'BM'),
('Bhutan', 'BT'),
('Bosnia and Herzegovina', 'BA'),
('Botswana', 'BW'),
('Bouvet Island', 'BV'),
('Brazil', 'BR'),
('British Indian Ocean Territory', 'IO'),
('Brunei Darussalam', 'BN'),
('Bulgaria', 'BG'),
('Burkina Faso', 'BF'),
('Burundi', 'BI'),
('Cambodia', 'KH'),
('Cameroon', 'CM'),
('Canada', 'CA'),
('Cape Verde', 'CV'),
('Cayman Islands', 'KY'),
('Central African Republic', 'CF'),
('Chad', 'TD'),
('Chile', 'CL'),
('China', 'CN'),
('Christmas Island', 'CX'),
('Cocos (Keeling) Islands', 'CC'),
('Colombia', 'CO'),
('Comoros', 'KM'),
('Congo', 'CG'),
('Cook Islands', 'CK'),
('Costa Rica', 'CR'),
('Croatia', 'HR'),
('Cuba', 'CU'),
('Cyprus', 'CY'),
('Czech Republic', 'CZ'),
('Denmark', 'DK'),
('Djibouti', 'DJ'),
('Dominica', 'DM'),
('Dominican Republic', 'DO'),
('Ecuador', 'EC'),
('Egypt', 'EG'),
('El Salvador', 'SV'),
('Equatorial Guinea', 'GQ'),
('Eritrea', 'ER'),
('Estonia', 'EE'),
('Ethiopia', 'ET'),
('Falkland Islands (Malvinas)' ,'FK'),
('Faroe Islands', 'FO'),
('Fiji', 'FJ'),
('Finland', 'FI'),
('France', 'FR'),
('French Guiana', 'GF'),
('French Polynesia', 'PF'),
('French Southern Territories', 'TF'),
('Gabon', 'GA'),
('Gambia', 'GM'),
('Georgia', 'GE'),
('Germany', 'DE'),
('Ghana', 'GH'),
('Gibraltar', 'GI'),
('Greece', 'GR'),
('Greenland', 'GL'),
('Grenada', 'GD'),
('Guadeloupe', 'GP'),
('Guam', 'GU'),
('Guatemala', 'GT'),
('Guernsey', 'GG'),
('Guinea', 'GN'),
('Guinea-Bissau', 'GW'),
('Guyana', 'GY'),
('Haiti', 'HT'),
('Heard Island and McDonald Islands', 'HM'),
('Holy See (Vatican City State)' ,'VA'),
('Honduras', 'HN'),
('Hong Kong', 'HK'),
('Hungary', 'HU'),
('Iceland', 'IS'),
('India', 'IN'),
('Indonesia', 'ID'),
('Iraq', 'IQ'),
('Ireland', 'IE'),
('Isle of Man', 'IM'),
('Israel', 'IL'),
('Italy', 'IT'),
('Jamaica', 'JM'),
('Japan', 'JP'),
('Jersey', 'JE'),
('Jordan', 'JO'),
('Kazakhstan', 'KZ'),
('Kenya', 'KE'),
('Kiribati', 'KI'),
('Kuwait', 'KW'),
('Kyrgyzstan', 'KG'),
('Lao Peoples Democratic Republic', 'LA'),
('Latvia', 'LV'),
('Lebanon', 'LB'),
('Lesotho', 'LS'),
('Liberia', 'LR'),
('Libya', 'LY'),
('Liechtenstein', 'LI'),
('Lithuania', 'LT'),
('Luxembourg', 'LU'),
('Macao', 'MO'),
('Madagascar', 'MG'),
('Malawi', 'MW'),
('Malaysia', 'MY'),
('Maldives', 'MV'),
('Mali', 'ML'),
('Malta', 'MT'),
('Marshall Islands', 'MH'),
('Martinique', 'MQ'),
('Mauritania', 'MR'),
('Mauritius', 'MU'),
('Mayotte', 'YT'),
('Mexico', 'MX'),
('Monaco', 'MC'),
('Mongolia', 'MN'),
('Montenegro', 'ME'),
('Montserrat', 'MS'),
('Morocco', 'MA'),
('Mozambique', 'MZ'),
('Myanmar', 'MM'),
('Namibia', 'NA'),
('Nauru', 'NR'),
('Nepal', 'NP'),
('Netherlands', 'NL'),
('New Caledonia', 'NC'),
('New Zealand', 'NZ'),
('Nicaragua', 'NI'),
('Niger', 'NE'),
('Nigeria', 'NG'),
('Niue', 'NU'),
('Norfolk Island', 'NF'),
('Northern Mariana Islands', 'MP'),
('Norway', 'NO'),
('Oman', 'OM'),
('Pakistan', 'PK'),
('Palau', 'PW'),
('Panama', 'PA'),
('Papua New Guinea', 'PG'),
('Paraguay', 'PY'),
('Peru', 'PE'),
('Philippines', 'PH'),
('Pitcairn', 'PN'),
('Poland', 'PL'),
('Portugal', 'PT'),
('Puerto Rico', 'PR'),
('Qatar', 'QA'),
('Romania', 'RO'),
('Russian Federation', 'RU'),
('Rwanda', 'RW'),
('Saint Kitts and Nevis', 'KN'),
('Saint Lucia', 'LC'),
('Saint Martin (French part)' ,'MF'),
('Saint Pierre and Miquelon', 'PM'),
('Saint Vincent and the Grenadines', 'VC'),
('Samoa', 'WS'),
('San Marino', 'SM'),
('Sao Tome and Principe', 'ST'),
('Saudi Arabia', 'SA'),
('Senegal', 'SN'),
('Serbia', 'RS'),
('Seychelles', 'SC'),
('Sierra Leone', 'SL'),
('Singapore', 'SG'),
('Sint Maarten (Dutch part)' ,'SX'),
('Slovakia', 'SK'),
('Slovenia', 'SI'),
('Solomon Islands', 'SB'),
('Somalia', 'SO'),
('South Africa', 'ZA'),
('South Georgia and the South Sandwich Islands', 'GS'),
('South Sudan', 'SS'),
('Spain', 'ES'),
('Sri Lanka', 'LK'),
('Sudan', 'SD'),
('Suriname', 'SR'),
('Svalbard and Jan Mayen', 'SJ'),
('Swaziland', 'SZ'),
('Sweden', 'SE'),
('Switzerland', 'CH'),
('Syrian Arab Republic', 'SY'),
('Tajikistan', 'TJ'),
('Thailand', 'TH'),
('Timor-Leste', 'TL'),
('Togo', 'TG'),
('Tokelau', 'TK'),
('Tonga', 'TO'),
('Trinidad and Tobago', 'TT'),
('Tunisia', 'TN'),
('Turkey', 'TR'),
('Turkmenistan', 'TM'),
('Turks and Caicos Islands', 'TC'),
('Tuvalu', 'TV'),
('Uganda', 'UG'),
('Ukraine', 'UA'),
('United Arab Emirates', 'AE'),
('United Kingdom', 'GB'),
('United States', 'US'),
('United States Minor Outlying Islands', 'UM'),
('Uruguay', 'UY'),
('Uzbekistan', 'UZ'),
('Vanuatu', 'VU'),
('Viet Nam', 'VN'),
('Wallis and Futuna', 'WF'),
('Western Sahara', 'EH'),
('Yemen', 'YE'),
('Zambia', 'ZM'),
('Zimbabwe', 'ZW');

CREATE TABLE IF NOT EXISTS artists(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(747) NOT NULL UNIQUE,
	country_id SMALLSERIAL,
	website VARCHAR(256) NOT NULL UNIQUE,
	tour_dates SMALLINT NOT NULL DEFAULT 0,
	CONSTRAINT fk_country_id FOREIGN KEY(country_id) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_abstr_user FOREIGN KEY(id) REFERENCES abstract_users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

SELECT id, title FROM public.countries WHERE iso='GB' OR iso='US';

INSERT INTO artists(id, name, country_id, website, tour_dates) VALUES
(2, 'Ariana Grande', 218, 'https://www.arianagrande.com/', 0),
(6, 'Zayn Malik', 217, 'https://www.inzayn.com/', 0),
(7, 'Adel', 217, 'https://www.adele.com/', 1),
(8, 'Harry Styles', 217, 'https://www.hstyles.co.uk/', 71),
(9, 'Ed Sheeran', 217, 'https://www.edsheeran.com/NATour' , 33),
(10, 'Imagine Dragons', 218,'https://www.imaginedragonsmusic.com/', 7);

SELECT * FROM public.artists;

CREATE TABLE IF NOT EXISTS labels(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE,
	website VARCHAR(256),
	foundation_year SMALLINT NOT NULL CHECK(foundation_year >= 0 AND foundation_year < date_part('year', CURRENT_DATE) + 1)
);

INSERT INTO labels(name, website, foundation_year) VALUES
('Republic', 'https://www.republicrecords.com/', 1995),
('Syco', 'https://www.sycoentertainment.com/', 2002),
('Columbia', 'https://www.columbiarecords.com/', 1889),
('RCA', 'https://www.rcarecords.com/', 1900),
('XL Recordings', 'https://www.xlrecordings.com/', 1989),
('Stone Records', 'https://stonerecords.co.uk/', 2008),
('Asylum Records', 'https://www.asylumrecords.com/', 1971),
('Atlantic Records','https://www.atlanticrecords.com/', 1947),
('Elektra Records', 'https://www.elektramusicgroup.com/', 1950),
('Kidinakorner', '', 2011),
('Interscope Records', 'https://www.interscope.com/', 1990);

CREATE TABLE IF NOT EXISTS artist_label(
	artist_id BIGSERIAL REFERENCES artists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	label_id BIGSERIAL REFERENCES labels(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT artist_label_pkey PRIMARY KEY (artist_id, label_id)
);

SELECT * FROM public.artists;

INSERT INTO artist_label(artist_id, label_id) VALUES 
(2, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 3),
(7, 5),
(7, 6),
(8, 2),
(8, 3),
(9, 7),
(9, 8),
(9, 9),
(10, 10),
(10, 11);

CREATE TABLE IF NOT EXISTS genres(
	id SMALLSERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
);

INSERT INTO genres(name) VALUES
('Pop'),
('R&B'),
('soul'),
('soft rock'),
('folk-pop'),
('electropop'),
('indie pop'),
('arena rock'),
('alternative rock');

INSERT INTO genres(name) VALUES ('Pop rock');

CREATE TABLE IF NOT EXISTS artist_genre(
	artist_id BIGSERIAL REFERENCES artists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	genre_id SMALLSERIAL REFERENCES genres(id) ON UPDATE CASCADE ON DELETE CASCADE, 
	CONSTRAINT artist_genre_pkey PRIMARY KEY(artist_id, genre_id)
);

SELECT * FROM public.genres;
SELECT * FROM public.artists;

INSERT INTO artist_genre(artist_id, genre_id) VALUES
(2, 1),
(2, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 3),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(9, 5),
(10, 1),
(10, 10),
(10, 6),
(10, 7),
(10, 8),
(10, 9);

CREATE TABLE IF NOT EXISTS albums(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	release_date SMALLINT NOT NULL CHECK(release_date >= 0 AND release_date < date_part('year', CURRENT_DATE) + 1)
);

INSERT INTO albums(name, release_date) VALUES
('Yours Truly', 2013),
('My Everything', 2014),
('Dangerous Woman', 2016),
('Sweetener', 2018),
('Thank U', 2019),
('Positions', 2020);

INSERT INTO albums(name, release_date) VALUES
('Mind of Mine', 2016),
('Icarus Falls', 2018),
('Nobody Is Listening', 2021);

INSERT INTO albums(name, release_date) VALUES
('19', 2008),
('21', 2011),
('25', 2015),
('30', 2021);

INSERT INTO albums(name, release_date) VALUES
('Harry Styles', 2017),
('Fine Line', 2019),
('Harry''s House', 2022);

INSERT INTO albums(name, release_date) VALUES
('+', 2011),
('×', 2014),
('÷', 2017),
('No.6 Collaborations Project', 2019),
('=', 2021);

INSERT INTO albums(name, release_date) VALUES
('Night Visions', 2012),
('Smoke + Mirrors', 2015),
('Evolve', 2017),
('Origins', 2018),
('Mercury – Act 1', 2021),
('Mercury – Act 2', 2022);

CREATE TABLE IF NOT EXISTS artist_album(
	artist_id BIGSERIAL REFERENCES artists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	album_id SMALLSERIAL REFERENCES albums(id) ON UPDATE CASCADE ON DELETE CASCADE, 
	CONSTRAINT artist_album_pkey PRIMARY KEY(artist_id, album_id)
);

select * from public.albums;

INSERT INTO artist_album(artist_id, album_id) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(8, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(9, 19),
(9, 20),
(9, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27);

CREATE TABLE IF NOT EXISTS tracks(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL,
	timing TIME NOT NULL,
	likes BIGINT NOT NULL CHECK(likes >= 0),
	streaming BIGINT NOT NULL CHECK(streaming >= 0),
	storage_path VARCHAR(150) NOT NULL,
	album_id BIGSERIAL,
	CONSTRAINT fk_album_id FOREIGN KEY (album_id) REFERENCES albums(id)
); 

INSERT INTO tracks(name, timing, likes, streaming, storage_path, album_id) VALUES
('DEMONS','02:57:00', 174385925, 19047354395, 'somewhere', 22),
('RADIOACTIVE', '03:06:00', 46327462, 42738497342, 'somwhere', 22),
('BELIEVER','03:24:00',465374342,357865345,'somwhere', 24),
('WHATEVER IT TAKES','03:21:00',265374342,457865345,'somwhere', 24),
('NATURAL','03:09:00',365374342,857865345,'somwhere', 25),
('BAD LIER','04:20:00',465374342,897865345,'somwhere', 25),
('PILLOWTALK','03:22:00',1365374342,1857865345,'somwhere', 7),
('DUSK TILL DOWN','04:27:00',1865374342,2057865345,'somwhere', 8),
('GOOD YEARS','03:00:00',965374342,1557865345,'somwhere', 8),
('OUTSIDE','03:28:00',665374342,1057865345,'somwhere', 9);


CREATE TABLE IF NOT EXISTS track_genre(
	track_id BIGSERIAL REFERENCES tracks(id) ON UPDATE CASCADE ON DELETE CASCADE,
	genre_id SMALLSERIAL REFERENCES genres(id) ON UPDATE CASCADE ON DELETE CASCADE, 
	CONSTRAINT track_genre_pkey PRIMARY KEY(track_id, genre_id)
);

select * from public.tracks;

INSERT INTO track_genre(track_id, genre_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 7),
(5, 10),
(6, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 2);

CREATE TABLE IF NOT EXISTS instruments(
	id SMALLSERIAL PRIMARY KEY,
	title VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO instruments(title) VALUES 
('Vocals'),
('Guitar'),
('Drams'),
('Keyboards'),
('Cello'),
('Violin'),
('Bass');

CREATE TABLE IF NOT EXISTS artist_instrument(
	artist_id BIGSERIAL REFERENCES artists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	instrument_id SMALLSERIAL REFERENCES instruments(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT artist_instrument_pkey PRIMARY KEY (artist_id, instrument_id)
);

INSERT INTO artist_instrument(artist_id, instrument_id) VALUES
(2, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 1);

CREATE TABLE IF NOT EXISTS playlists(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL
);

INSERT INTO playlists(name) VALUES
('Favourities');

CREATE TABLE IF NOT EXISTS playlist_abstr_user(
	playlist_id BIGSERIAL REFERENCES playlists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	abstr_user_id BIGSERIAL REFERENCES abstract_users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT playlist_abstr_user_pkey PRIMARY KEY(playlist_id, abstr_user_id)
);

SELECT * FROM public.abstract_users;

INSERT INTO playlist_abstr_user(abstr_user_id, playlist_id) VALUES
(3, 1);

CREATE TABLE IF NOT EXISTS playlist_track (
	track_id BIGSERIAL REFERENCES tracks(id) ON UPDATE CASCADE ON DELETE CASCADE,
	playlist_id BIGSERIAL REFERENCES playlists(id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT track_playlist_pkey PRIMARY KEY(track_id, playlist_id)
);

SELECT * FROM public.tracks;

INSERT INTO playlist_track(track_id, playlist_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);