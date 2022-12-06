--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-12-06 13:20:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3615 (class 0 OID 25220)
-- Dependencies: 211
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles (id, role) VALUES (1, 'admin');
INSERT INTO public.roles (id, role) VALUES (2, 'artist');
INSERT INTO public.roles (id, role) VALUES (3, 'user');


--
-- TOC entry 3618 (class 0 OID 25230)
-- Dependencies: 214
-- Data for Name: abstract_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (1, 1, 'admin', 'admin@gmail.com', '$2a$06$FgCgsgxtM2kIpqXcRD0LreLl10Hk8Y6B3ZAHxhI1hkBAPgZRRRDk2', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (2, 2, 'ariana34', 'ariana_grande@gmail.com', '$2a$06$517I/OxuVJ3f5Ul2MWiF2.i4JMgVQvmTrmp1AvTpW6oQuYhRmpFOu', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (3, 3, 'user1', 'myEmail@gmail.com', '$2a$06$FsqY5n40rf4.nDPnrA0Pm.CEhmZ5hvwnOX5yBRji7InA7bXob7b1e', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (4, 3, 'user2', 'user2@gmail.com', '$2a$06$yvJ.H3egwKrx42OGjvr58O5i/cmd3PcO0jXKerOO7RBCJKF14I3RK', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (5, 3, 'user3', 'user3@gmail.com', '$2a$06$FMqmcljiXZvK.0jnPysecOgKb1DsykhzMJIjyv0VkJWgQuECjXUTu', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (6, 2, 'zayn', 'zayn@gmail.com', '$2a$06$zJIBcqFq0IU59Wn4hFqtlunciiMaFf5Wgr4fIjifKIrObTSqaf/Wi', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (7, 2, 'adel', 'Adel574@gmail.com', '$2a$06$So/UudPHA/W5KNLB8fvi3O/WiIDvafVd9JMEXedaSB6CBfVDxXopm', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (8, 2, 'harryS', 'harryS@gmail.com', '$2a$06$FK0PVwMdObSkkwxxwse3OuYGd8qMAlwXP7Co3n/kjXgg92pUL4UYW', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (9, 2, 'edSheeran', 'ed@gmail.com', '$2a$06$qeG/fCVPol6gzrHX4AL3UO2XbPOnrX6pynE8qV9pRCMwnXDRwffaC', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (10, 2, 'imagineDr', 'dr_im@gmail.com', '$2a$06$j0Ad532N3oxVZkqR1Gjbk.fQF7iZkq80GPkwJG3tH.B6fYCONVRVK', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (94, 3, 'helpme', 'helpme@gmail.com', '$2a$06$7uLDTMKMb2EZ1spARfgvG.tO6jMPlDMMD41hUM7q.rXmr5ydGYbZO', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (95, 3, 'helpme1', 'helpme1@gmail.com', '$2a$06$Nqur7ALQmVqtpT4gbtmclOFMMP6EqfohEUJ5mwc93kBlWUul8lOvK', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (96, 3, 'helpme2', 'helpme2@gmail.com', '$2a$06$EJyqiU6bBD7tRtBiAOd9Y.Ul75Hj.Anrxc4Op.4sUyTQB1u62MnV.', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (97, 2, 'NiallHoran', 'nial@gmail.com', '$2a$06$ixwUcRG5YtFzMqXswuezQOw3yo6FGsdyC1D3o6yieJxGYEJAsXBae', true, false, false, 'help', NULL, NULL, NULL);
INSERT INTO public.abstract_users (id, role_id, login, email, password, is_active, is_staff, is_superuser, username, last_login, first_name, last_name) VALUES (105, 3, 'tanusha2002', 'tanusha20020@tut.by', 'pbkdf2_sha256$390000$Wrzz9NUkptFlZinyTfZExw$Xa27hD4XVd2Ob3kVkfyePuKyfVfe32mT3LLE2fZIgeo=', true, true, true, 'Tanusha', '2022-12-06 07:27:09.942127+00', NULL, NULL);


--
-- TOC entry 3640 (class 0 OID 25387)
-- Dependencies: 236
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.albums (id, name, release_date, icon) VALUES (1, 'Yours Truly', 2013, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (2, 'My Everything', 2014, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (3, 'Dangerous Woman', 2016, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (4, 'Sweetener', 2018, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (5, 'Thank U', 2019, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (6, 'Positions', 2020, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (7, 'Mind of Mine', 2016, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (8, 'Icarus Falls', 2018, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (9, 'Nobody Is Listening', 2021, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (10, '19', 2008, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (11, '21', 2011, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (12, '25', 2015, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (13, '30', 2021, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (14, 'Harry Styles', 2017, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (15, 'Fine Line', 2019, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (16, 'Harry''s House', 2022, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (17, '+', 2011, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (18, '×', 2014, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (19, '÷', 2017, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (20, 'No.6 Collaborations Project', 2019, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (21, '=', 2021, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (22, 'Night Visions', 2012, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (23, 'Smoke + Mirrors', 2015, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (24, 'Evolve', 2017, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (25, 'Origins', 2018, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (26, 'Mercury – Act 1', 2021, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (27, 'Mercury – Act 2', 2022, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (28, 'Flicker', 2017, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (29, 'Heartbreak weather', 2020, NULL);
INSERT INTO public.albums (id, name, release_date, icon) VALUES (30, 'MyOwn', 2022, 'photos/2022/12/06/icon.jpg');


--
-- TOC entry 3625 (class 0 OID 25293)
-- Dependencies: 221
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, title, iso) VALUES (1, 'Afghanistan', 'AF');
INSERT INTO public.countries (id, title, iso) VALUES (2, 'Albania', 'AL');
INSERT INTO public.countries (id, title, iso) VALUES (3, 'Algeria', 'DZ');
INSERT INTO public.countries (id, title, iso) VALUES (4, 'American Samoa', 'AS');
INSERT INTO public.countries (id, title, iso) VALUES (5, 'Andorra', 'AD');
INSERT INTO public.countries (id, title, iso) VALUES (6, 'Angola', 'AO');
INSERT INTO public.countries (id, title, iso) VALUES (7, 'Anguilla', 'AI');
INSERT INTO public.countries (id, title, iso) VALUES (8, 'Antarctica', 'AQ');
INSERT INTO public.countries (id, title, iso) VALUES (9, 'Antigua and Barbuda', 'AG');
INSERT INTO public.countries (id, title, iso) VALUES (10, 'Argentina', 'AR');
INSERT INTO public.countries (id, title, iso) VALUES (11, 'Armenia', 'AM');
INSERT INTO public.countries (id, title, iso) VALUES (12, 'Aruba', 'AW');
INSERT INTO public.countries (id, title, iso) VALUES (13, 'Australia', 'AU');
INSERT INTO public.countries (id, title, iso) VALUES (14, 'Austria', 'AT');
INSERT INTO public.countries (id, title, iso) VALUES (15, 'Azerbaijan', 'AZ');
INSERT INTO public.countries (id, title, iso) VALUES (16, 'Bahamas', 'BS');
INSERT INTO public.countries (id, title, iso) VALUES (17, 'Bahrain', 'BH');
INSERT INTO public.countries (id, title, iso) VALUES (18, 'Bangladesh', 'BD');
INSERT INTO public.countries (id, title, iso) VALUES (19, 'Barbados', 'BB');
INSERT INTO public.countries (id, title, iso) VALUES (20, 'Belarus', 'BY');
INSERT INTO public.countries (id, title, iso) VALUES (21, 'Belgium', 'BE');
INSERT INTO public.countries (id, title, iso) VALUES (22, 'Belize', 'BZ');
INSERT INTO public.countries (id, title, iso) VALUES (23, 'Benin', 'BJ');
INSERT INTO public.countries (id, title, iso) VALUES (24, 'Bermuda', 'BM');
INSERT INTO public.countries (id, title, iso) VALUES (25, 'Bhutan', 'BT');
INSERT INTO public.countries (id, title, iso) VALUES (26, 'Bosnia and Herzegovina', 'BA');
INSERT INTO public.countries (id, title, iso) VALUES (27, 'Botswana', 'BW');
INSERT INTO public.countries (id, title, iso) VALUES (28, 'Bouvet Island', 'BV');
INSERT INTO public.countries (id, title, iso) VALUES (29, 'Brazil', 'BR');
INSERT INTO public.countries (id, title, iso) VALUES (30, 'British Indian Ocean Territory', 'IO');
INSERT INTO public.countries (id, title, iso) VALUES (31, 'Brunei Darussalam', 'BN');
INSERT INTO public.countries (id, title, iso) VALUES (32, 'Bulgaria', 'BG');
INSERT INTO public.countries (id, title, iso) VALUES (33, 'Burkina Faso', 'BF');
INSERT INTO public.countries (id, title, iso) VALUES (34, 'Burundi', 'BI');
INSERT INTO public.countries (id, title, iso) VALUES (35, 'Cambodia', 'KH');
INSERT INTO public.countries (id, title, iso) VALUES (36, 'Cameroon', 'CM');
INSERT INTO public.countries (id, title, iso) VALUES (37, 'Canada', 'CA');
INSERT INTO public.countries (id, title, iso) VALUES (38, 'Cape Verde', 'CV');
INSERT INTO public.countries (id, title, iso) VALUES (39, 'Cayman Islands', 'KY');
INSERT INTO public.countries (id, title, iso) VALUES (40, 'Central African Republic', 'CF');
INSERT INTO public.countries (id, title, iso) VALUES (41, 'Chad', 'TD');
INSERT INTO public.countries (id, title, iso) VALUES (42, 'Chile', 'CL');
INSERT INTO public.countries (id, title, iso) VALUES (43, 'China', 'CN');
INSERT INTO public.countries (id, title, iso) VALUES (44, 'Christmas Island', 'CX');
INSERT INTO public.countries (id, title, iso) VALUES (45, 'Cocos (Keeling) Islands', 'CC');
INSERT INTO public.countries (id, title, iso) VALUES (46, 'Colombia', 'CO');
INSERT INTO public.countries (id, title, iso) VALUES (47, 'Comoros', 'KM');
INSERT INTO public.countries (id, title, iso) VALUES (48, 'Congo', 'CG');
INSERT INTO public.countries (id, title, iso) VALUES (49, 'Cook Islands', 'CK');
INSERT INTO public.countries (id, title, iso) VALUES (50, 'Costa Rica', 'CR');
INSERT INTO public.countries (id, title, iso) VALUES (51, 'Croatia', 'HR');
INSERT INTO public.countries (id, title, iso) VALUES (52, 'Cuba', 'CU');
INSERT INTO public.countries (id, title, iso) VALUES (53, 'Cyprus', 'CY');
INSERT INTO public.countries (id, title, iso) VALUES (54, 'Czech Republic', 'CZ');
INSERT INTO public.countries (id, title, iso) VALUES (55, 'Denmark', 'DK');
INSERT INTO public.countries (id, title, iso) VALUES (56, 'Djibouti', 'DJ');
INSERT INTO public.countries (id, title, iso) VALUES (57, 'Dominica', 'DM');
INSERT INTO public.countries (id, title, iso) VALUES (58, 'Dominican Republic', 'DO');
INSERT INTO public.countries (id, title, iso) VALUES (59, 'Ecuador', 'EC');
INSERT INTO public.countries (id, title, iso) VALUES (60, 'Egypt', 'EG');
INSERT INTO public.countries (id, title, iso) VALUES (61, 'El Salvador', 'SV');
INSERT INTO public.countries (id, title, iso) VALUES (62, 'Equatorial Guinea', 'GQ');
INSERT INTO public.countries (id, title, iso) VALUES (63, 'Eritrea', 'ER');
INSERT INTO public.countries (id, title, iso) VALUES (64, 'Estonia', 'EE');
INSERT INTO public.countries (id, title, iso) VALUES (65, 'Ethiopia', 'ET');
INSERT INTO public.countries (id, title, iso) VALUES (66, 'Falkland Islands (Malvinas)', 'FK');
INSERT INTO public.countries (id, title, iso) VALUES (67, 'Faroe Islands', 'FO');
INSERT INTO public.countries (id, title, iso) VALUES (68, 'Fiji', 'FJ');
INSERT INTO public.countries (id, title, iso) VALUES (69, 'Finland', 'FI');
INSERT INTO public.countries (id, title, iso) VALUES (70, 'France', 'FR');
INSERT INTO public.countries (id, title, iso) VALUES (71, 'French Guiana', 'GF');
INSERT INTO public.countries (id, title, iso) VALUES (72, 'French Polynesia', 'PF');
INSERT INTO public.countries (id, title, iso) VALUES (73, 'French Southern Territories', 'TF');
INSERT INTO public.countries (id, title, iso) VALUES (74, 'Gabon', 'GA');
INSERT INTO public.countries (id, title, iso) VALUES (75, 'Gambia', 'GM');
INSERT INTO public.countries (id, title, iso) VALUES (76, 'Georgia', 'GE');
INSERT INTO public.countries (id, title, iso) VALUES (77, 'Germany', 'DE');
INSERT INTO public.countries (id, title, iso) VALUES (78, 'Ghana', 'GH');
INSERT INTO public.countries (id, title, iso) VALUES (79, 'Gibraltar', 'GI');
INSERT INTO public.countries (id, title, iso) VALUES (80, 'Greece', 'GR');
INSERT INTO public.countries (id, title, iso) VALUES (81, 'Greenland', 'GL');
INSERT INTO public.countries (id, title, iso) VALUES (82, 'Grenada', 'GD');
INSERT INTO public.countries (id, title, iso) VALUES (83, 'Guadeloupe', 'GP');
INSERT INTO public.countries (id, title, iso) VALUES (84, 'Guam', 'GU');
INSERT INTO public.countries (id, title, iso) VALUES (85, 'Guatemala', 'GT');
INSERT INTO public.countries (id, title, iso) VALUES (86, 'Guernsey', 'GG');
INSERT INTO public.countries (id, title, iso) VALUES (87, 'Guinea', 'GN');
INSERT INTO public.countries (id, title, iso) VALUES (88, 'Guinea-Bissau', 'GW');
INSERT INTO public.countries (id, title, iso) VALUES (89, 'Guyana', 'GY');
INSERT INTO public.countries (id, title, iso) VALUES (90, 'Haiti', 'HT');
INSERT INTO public.countries (id, title, iso) VALUES (91, 'Heard Island and McDonald Islands', 'HM');
INSERT INTO public.countries (id, title, iso) VALUES (92, 'Holy See (Vatican City State)', 'VA');
INSERT INTO public.countries (id, title, iso) VALUES (93, 'Honduras', 'HN');
INSERT INTO public.countries (id, title, iso) VALUES (94, 'Hong Kong', 'HK');
INSERT INTO public.countries (id, title, iso) VALUES (95, 'Hungary', 'HU');
INSERT INTO public.countries (id, title, iso) VALUES (96, 'Iceland', 'IS');
INSERT INTO public.countries (id, title, iso) VALUES (97, 'India', 'IN');
INSERT INTO public.countries (id, title, iso) VALUES (98, 'Indonesia', 'ID');
INSERT INTO public.countries (id, title, iso) VALUES (99, 'Iraq', 'IQ');
INSERT INTO public.countries (id, title, iso) VALUES (100, 'Ireland', 'IE');
INSERT INTO public.countries (id, title, iso) VALUES (101, 'Isle of Man', 'IM');
INSERT INTO public.countries (id, title, iso) VALUES (102, 'Israel', 'IL');
INSERT INTO public.countries (id, title, iso) VALUES (103, 'Italy', 'IT');
INSERT INTO public.countries (id, title, iso) VALUES (104, 'Jamaica', 'JM');
INSERT INTO public.countries (id, title, iso) VALUES (105, 'Japan', 'JP');
INSERT INTO public.countries (id, title, iso) VALUES (106, 'Jersey', 'JE');
INSERT INTO public.countries (id, title, iso) VALUES (107, 'Jordan', 'JO');
INSERT INTO public.countries (id, title, iso) VALUES (108, 'Kazakhstan', 'KZ');
INSERT INTO public.countries (id, title, iso) VALUES (109, 'Kenya', 'KE');
INSERT INTO public.countries (id, title, iso) VALUES (110, 'Kiribati', 'KI');
INSERT INTO public.countries (id, title, iso) VALUES (111, 'Kuwait', 'KW');
INSERT INTO public.countries (id, title, iso) VALUES (112, 'Kyrgyzstan', 'KG');
INSERT INTO public.countries (id, title, iso) VALUES (113, 'Lao Peoples Democratic Republic', 'LA');
INSERT INTO public.countries (id, title, iso) VALUES (114, 'Latvia', 'LV');
INSERT INTO public.countries (id, title, iso) VALUES (115, 'Lebanon', 'LB');
INSERT INTO public.countries (id, title, iso) VALUES (116, 'Lesotho', 'LS');
INSERT INTO public.countries (id, title, iso) VALUES (117, 'Liberia', 'LR');
INSERT INTO public.countries (id, title, iso) VALUES (118, 'Libya', 'LY');
INSERT INTO public.countries (id, title, iso) VALUES (119, 'Liechtenstein', 'LI');
INSERT INTO public.countries (id, title, iso) VALUES (120, 'Lithuania', 'LT');
INSERT INTO public.countries (id, title, iso) VALUES (121, 'Luxembourg', 'LU');
INSERT INTO public.countries (id, title, iso) VALUES (122, 'Macao', 'MO');
INSERT INTO public.countries (id, title, iso) VALUES (123, 'Madagascar', 'MG');
INSERT INTO public.countries (id, title, iso) VALUES (124, 'Malawi', 'MW');
INSERT INTO public.countries (id, title, iso) VALUES (125, 'Malaysia', 'MY');
INSERT INTO public.countries (id, title, iso) VALUES (126, 'Maldives', 'MV');
INSERT INTO public.countries (id, title, iso) VALUES (127, 'Mali', 'ML');
INSERT INTO public.countries (id, title, iso) VALUES (128, 'Malta', 'MT');
INSERT INTO public.countries (id, title, iso) VALUES (129, 'Marshall Islands', 'MH');
INSERT INTO public.countries (id, title, iso) VALUES (130, 'Martinique', 'MQ');
INSERT INTO public.countries (id, title, iso) VALUES (131, 'Mauritania', 'MR');
INSERT INTO public.countries (id, title, iso) VALUES (132, 'Mauritius', 'MU');
INSERT INTO public.countries (id, title, iso) VALUES (133, 'Mayotte', 'YT');
INSERT INTO public.countries (id, title, iso) VALUES (134, 'Mexico', 'MX');
INSERT INTO public.countries (id, title, iso) VALUES (135, 'Monaco', 'MC');
INSERT INTO public.countries (id, title, iso) VALUES (136, 'Mongolia', 'MN');
INSERT INTO public.countries (id, title, iso) VALUES (137, 'Montenegro', 'ME');
INSERT INTO public.countries (id, title, iso) VALUES (138, 'Montserrat', 'MS');
INSERT INTO public.countries (id, title, iso) VALUES (139, 'Morocco', 'MA');
INSERT INTO public.countries (id, title, iso) VALUES (140, 'Mozambique', 'MZ');
INSERT INTO public.countries (id, title, iso) VALUES (141, 'Myanmar', 'MM');
INSERT INTO public.countries (id, title, iso) VALUES (142, 'Namibia', 'NA');
INSERT INTO public.countries (id, title, iso) VALUES (143, 'Nauru', 'NR');
INSERT INTO public.countries (id, title, iso) VALUES (144, 'Nepal', 'NP');
INSERT INTO public.countries (id, title, iso) VALUES (145, 'Netherlands', 'NL');
INSERT INTO public.countries (id, title, iso) VALUES (146, 'New Caledonia', 'NC');
INSERT INTO public.countries (id, title, iso) VALUES (147, 'New Zealand', 'NZ');
INSERT INTO public.countries (id, title, iso) VALUES (148, 'Nicaragua', 'NI');
INSERT INTO public.countries (id, title, iso) VALUES (149, 'Niger', 'NE');
INSERT INTO public.countries (id, title, iso) VALUES (150, 'Nigeria', 'NG');
INSERT INTO public.countries (id, title, iso) VALUES (151, 'Niue', 'NU');
INSERT INTO public.countries (id, title, iso) VALUES (152, 'Norfolk Island', 'NF');
INSERT INTO public.countries (id, title, iso) VALUES (153, 'Northern Mariana Islands', 'MP');
INSERT INTO public.countries (id, title, iso) VALUES (154, 'Norway', 'NO');
INSERT INTO public.countries (id, title, iso) VALUES (155, 'Oman', 'OM');
INSERT INTO public.countries (id, title, iso) VALUES (156, 'Pakistan', 'PK');
INSERT INTO public.countries (id, title, iso) VALUES (157, 'Palau', 'PW');
INSERT INTO public.countries (id, title, iso) VALUES (158, 'Panama', 'PA');
INSERT INTO public.countries (id, title, iso) VALUES (159, 'Papua New Guinea', 'PG');
INSERT INTO public.countries (id, title, iso) VALUES (160, 'Paraguay', 'PY');
INSERT INTO public.countries (id, title, iso) VALUES (161, 'Peru', 'PE');
INSERT INTO public.countries (id, title, iso) VALUES (162, 'Philippines', 'PH');
INSERT INTO public.countries (id, title, iso) VALUES (163, 'Pitcairn', 'PN');
INSERT INTO public.countries (id, title, iso) VALUES (164, 'Poland', 'PL');
INSERT INTO public.countries (id, title, iso) VALUES (165, 'Portugal', 'PT');
INSERT INTO public.countries (id, title, iso) VALUES (166, 'Puerto Rico', 'PR');
INSERT INTO public.countries (id, title, iso) VALUES (167, 'Qatar', 'QA');
INSERT INTO public.countries (id, title, iso) VALUES (168, 'Romania', 'RO');
INSERT INTO public.countries (id, title, iso) VALUES (169, 'Russian Federation', 'RU');
INSERT INTO public.countries (id, title, iso) VALUES (170, 'Rwanda', 'RW');
INSERT INTO public.countries (id, title, iso) VALUES (171, 'Saint Kitts and Nevis', 'KN');
INSERT INTO public.countries (id, title, iso) VALUES (172, 'Saint Lucia', 'LC');
INSERT INTO public.countries (id, title, iso) VALUES (173, 'Saint Martin (French part)', 'MF');
INSERT INTO public.countries (id, title, iso) VALUES (174, 'Saint Pierre and Miquelon', 'PM');
INSERT INTO public.countries (id, title, iso) VALUES (175, 'Saint Vincent and the Grenadines', 'VC');
INSERT INTO public.countries (id, title, iso) VALUES (176, 'Samoa', 'WS');
INSERT INTO public.countries (id, title, iso) VALUES (177, 'San Marino', 'SM');
INSERT INTO public.countries (id, title, iso) VALUES (178, 'Sao Tome and Principe', 'ST');
INSERT INTO public.countries (id, title, iso) VALUES (179, 'Saudi Arabia', 'SA');
INSERT INTO public.countries (id, title, iso) VALUES (180, 'Senegal', 'SN');
INSERT INTO public.countries (id, title, iso) VALUES (181, 'Serbia', 'RS');
INSERT INTO public.countries (id, title, iso) VALUES (182, 'Seychelles', 'SC');
INSERT INTO public.countries (id, title, iso) VALUES (183, 'Sierra Leone', 'SL');
INSERT INTO public.countries (id, title, iso) VALUES (184, 'Singapore', 'SG');
INSERT INTO public.countries (id, title, iso) VALUES (185, 'Sint Maarten (Dutch part)', 'SX');
INSERT INTO public.countries (id, title, iso) VALUES (186, 'Slovakia', 'SK');
INSERT INTO public.countries (id, title, iso) VALUES (187, 'Slovenia', 'SI');
INSERT INTO public.countries (id, title, iso) VALUES (188, 'Solomon Islands', 'SB');
INSERT INTO public.countries (id, title, iso) VALUES (189, 'Somalia', 'SO');
INSERT INTO public.countries (id, title, iso) VALUES (190, 'South Africa', 'ZA');
INSERT INTO public.countries (id, title, iso) VALUES (191, 'South Georgia and the South Sandwich Islands', 'GS');
INSERT INTO public.countries (id, title, iso) VALUES (192, 'South Sudan', 'SS');
INSERT INTO public.countries (id, title, iso) VALUES (193, 'Spain', 'ES');
INSERT INTO public.countries (id, title, iso) VALUES (194, 'Sri Lanka', 'LK');
INSERT INTO public.countries (id, title, iso) VALUES (195, 'Sudan', 'SD');
INSERT INTO public.countries (id, title, iso) VALUES (196, 'Suriname', 'SR');
INSERT INTO public.countries (id, title, iso) VALUES (197, 'Svalbard and Jan Mayen', 'SJ');
INSERT INTO public.countries (id, title, iso) VALUES (198, 'Swaziland', 'SZ');
INSERT INTO public.countries (id, title, iso) VALUES (199, 'Sweden', 'SE');
INSERT INTO public.countries (id, title, iso) VALUES (200, 'Switzerland', 'CH');
INSERT INTO public.countries (id, title, iso) VALUES (201, 'Syrian Arab Republic', 'SY');
INSERT INTO public.countries (id, title, iso) VALUES (202, 'Tajikistan', 'TJ');
INSERT INTO public.countries (id, title, iso) VALUES (203, 'Thailand', 'TH');
INSERT INTO public.countries (id, title, iso) VALUES (204, 'Timor-Leste', 'TL');
INSERT INTO public.countries (id, title, iso) VALUES (205, 'Togo', 'TG');
INSERT INTO public.countries (id, title, iso) VALUES (206, 'Tokelau', 'TK');
INSERT INTO public.countries (id, title, iso) VALUES (207, 'Tonga', 'TO');
INSERT INTO public.countries (id, title, iso) VALUES (208, 'Trinidad and Tobago', 'TT');
INSERT INTO public.countries (id, title, iso) VALUES (209, 'Tunisia', 'TN');
INSERT INTO public.countries (id, title, iso) VALUES (210, 'Turkey', 'TR');
INSERT INTO public.countries (id, title, iso) VALUES (211, 'Turkmenistan', 'TM');
INSERT INTO public.countries (id, title, iso) VALUES (212, 'Turks and Caicos Islands', 'TC');
INSERT INTO public.countries (id, title, iso) VALUES (213, 'Tuvalu', 'TV');
INSERT INTO public.countries (id, title, iso) VALUES (214, 'Uganda', 'UG');
INSERT INTO public.countries (id, title, iso) VALUES (215, 'Ukraine', 'UA');
INSERT INTO public.countries (id, title, iso) VALUES (216, 'United Arab Emirates', 'AE');
INSERT INTO public.countries (id, title, iso) VALUES (217, 'United Kingdom', 'GB');
INSERT INTO public.countries (id, title, iso) VALUES (218, 'United States', 'US');
INSERT INTO public.countries (id, title, iso) VALUES (219, 'United States Minor Outlying Islands', 'UM');
INSERT INTO public.countries (id, title, iso) VALUES (220, 'Uruguay', 'UY');
INSERT INTO public.countries (id, title, iso) VALUES (221, 'Uzbekistan', 'UZ');
INSERT INTO public.countries (id, title, iso) VALUES (222, 'Vanuatu', 'VU');
INSERT INTO public.countries (id, title, iso) VALUES (223, 'Viet Nam', 'VN');
INSERT INTO public.countries (id, title, iso) VALUES (224, 'Wallis and Futuna', 'WF');
INSERT INTO public.countries (id, title, iso) VALUES (225, 'Western Sahara', 'EH');
INSERT INTO public.countries (id, title, iso) VALUES (226, 'Yemen', 'YE');
INSERT INTO public.countries (id, title, iso) VALUES (227, 'Zambia', 'ZM');
INSERT INTO public.countries (id, title, iso) VALUES (228, 'Zimbabwe', 'ZW');


--
-- TOC entry 3628 (class 0 OID 25305)
-- Dependencies: 224
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (2, 'Ariana Grande', 218, 'https://www.arianagrande.com/', 0);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (6, 'Zayn Malik', 217, 'https://www.inzayn.com/', 0);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (7, 'Adel', 217, 'https://www.adele.com/', 1);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (8, 'Harry Styles', 217, 'https://www.hstyles.co.uk/', 71);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (9, 'Ed Sheeran', 217, 'https://www.edsheeran.com/NATour', 33);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (10, 'Imagine Dragons', 218, 'https://www.imaginedragonsmusic.com/', 7);
INSERT INTO public.artists (id, name, country_id, website, tour_dates) VALUES (97, 'Niall Horan', 217, 'https://www.niallhoran.com/', 3);


--
-- TOC entry 3643 (class 0 OID 25396)
-- Dependencies: 239
-- Data for Name: artist_album; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 1);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 2);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 3);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 4);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 5);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (2, 6);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (6, 7);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (6, 8);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (6, 9);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (7, 10);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (7, 11);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (7, 12);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (7, 13);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (8, 14);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (8, 15);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (8, 16);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (9, 17);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (9, 18);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (9, 19);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (9, 20);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (9, 21);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 22);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 23);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 24);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 25);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 26);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (10, 27);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (97, 28);
INSERT INTO public.artist_album (artist_id, album_id) VALUES (97, 29);


--
-- TOC entry 3635 (class 0 OID 25359)
-- Dependencies: 231
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genres (id, name) VALUES (1, 'Pop');
INSERT INTO public.genres (id, name) VALUES (2, 'R&B');
INSERT INTO public.genres (id, name) VALUES (3, 'soul');
INSERT INTO public.genres (id, name) VALUES (4, 'soft rock');
INSERT INTO public.genres (id, name) VALUES (5, 'folk-pop');
INSERT INTO public.genres (id, name) VALUES (6, 'electropop');
INSERT INTO public.genres (id, name) VALUES (7, 'indie pop');
INSERT INTO public.genres (id, name) VALUES (8, 'arena rock');
INSERT INTO public.genres (id, name) VALUES (9, 'alternative rock');
INSERT INTO public.genres (id, name) VALUES (10, 'pop rock');


--
-- TOC entry 3638 (class 0 OID 25369)
-- Dependencies: 234
-- Data for Name: artist_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (2, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (2, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (6, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (6, 2);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (7, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (7, 3);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (8, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (8, 4);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (9, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (9, 4);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (9, 5);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 10);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 6);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 7);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 8);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (10, 9);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (97, 1);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (97, 4);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (97, 5);
INSERT INTO public.artist_genre (artist_id, genre_id) VALUES (97, 10);


--
-- TOC entry 3651 (class 0 OID 25449)
-- Dependencies: 247
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instruments (id, title) VALUES (1, 'Vocals');
INSERT INTO public.instruments (id, title) VALUES (2, 'Guitar');
INSERT INTO public.instruments (id, title) VALUES (3, 'Drams');
INSERT INTO public.instruments (id, title) VALUES (4, 'Keyboards');
INSERT INTO public.instruments (id, title) VALUES (5, 'Cello');
INSERT INTO public.instruments (id, title) VALUES (6, 'Violin');
INSERT INTO public.instruments (id, title) VALUES (7, 'Bass');


--
-- TOC entry 3654 (class 0 OID 25459)
-- Dependencies: 250
-- Data for Name: artist_instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (2, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (6, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (7, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (8, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 2);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 3);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 4);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 5);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 6);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (9, 7);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (10, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (97, 1);
INSERT INTO public.artist_instrument (artist_id, instrument_id) VALUES (97, 2);


--
-- TOC entry 3630 (class 0 OID 25330)
-- Dependencies: 226
-- Data for Name: labels; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.labels (id, name, website, foundation_year) VALUES (1, 'Republic', 'https://www.republicrecords.com/', 1995);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (2, 'Syco', 'https://www.sycoentertainment.com/', 2002);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (3, 'Columbia', 'https://www.columbiarecords.com/', 1889);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (4, 'RCA', 'https://www.rcarecords.com/', 1900);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (5, 'XL Recordings', 'https://www.xlrecordings.com/', 1989);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (6, 'Stone Records', 'https://stonerecords.co.uk/', 2008);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (7, 'Asylum Records', 'https://www.asylumrecords.com/', 1971);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (8, 'Atlantic Records', 'https://www.atlanticrecords.com/', 1947);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (9, 'Elektra Records', 'https://www.elektramusicgroup.com/', 1950);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (10, 'Kidinakorner', '', 2011);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (11, 'Interscope Records', 'https://www.interscope.com/', 1990);
INSERT INTO public.labels (id, name, website, foundation_year) VALUES (12, 'Capitol Records', 'https://www.capitolrecords.com/', 1942);


--
-- TOC entry 3633 (class 0 OID 25341)
-- Dependencies: 229
-- Data for Name: artist_label; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artist_label (artist_id, label_id) VALUES (2, 1);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (6, 2);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (6, 3);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (6, 4);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (7, 3);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (7, 5);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (7, 6);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (8, 2);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (8, 3);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (9, 7);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (9, 8);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (9, 9);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (10, 10);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (10, 11);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (97, 2);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (97, 3);
INSERT INTO public.artist_label (artist_id, label_id) VALUES (97, 12);


--
-- TOC entry 3673 (class 0 OID 28190)
-- Dependencies: 269
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3667 (class 0 OID 28155)
-- Dependencies: 263
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'streaming', 'roles');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'streaming', 'abstractusers');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'streaming', 'albums');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'streaming', 'artistalbum');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'streaming', 'artistgenre');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'streaming', 'artistinstrument');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'streaming', 'artistlabel');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'streaming', 'artists');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'streaming', 'countries');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'streaming', 'djangomigrations');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'streaming', 'genres');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'streaming', 'instruments');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'streaming', 'labels');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'streaming', 'logging');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'streaming', 'playlistabstruser');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (21, 'streaming', 'playlisttrack');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (22, 'streaming', 'playlists');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (23, 'streaming', 'subscriptions');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (24, 'streaming', 'trackgenre');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (25, 'streaming', 'tracks');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (26, 'streaming', 'users');


--
-- TOC entry 3671 (class 0 OID 28184)
-- Dependencies: 267
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add roles', 6, 'add_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change roles', 6, 'change_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete roles', 6, 'delete_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view roles', 6, 'view_roles');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add abstract users', 7, 'add_abstractusers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change abstract users', 7, 'change_abstractusers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete abstract users', 7, 'delete_abstractusers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view abstract users', 7, 'view_abstractusers');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add albums', 8, 'add_albums');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change albums', 8, 'change_albums');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete albums', 8, 'delete_albums');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view albums', 8, 'view_albums');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add artist album', 9, 'add_artistalbum');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change artist album', 9, 'change_artistalbum');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete artist album', 9, 'delete_artistalbum');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view artist album', 9, 'view_artistalbum');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add artist genre', 10, 'add_artistgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change artist genre', 10, 'change_artistgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete artist genre', 10, 'delete_artistgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view artist genre', 10, 'view_artistgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add artist instrument', 11, 'add_artistinstrument');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change artist instrument', 11, 'change_artistinstrument');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete artist instrument', 11, 'delete_artistinstrument');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view artist instrument', 11, 'view_artistinstrument');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add artist label', 12, 'add_artistlabel');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change artist label', 12, 'change_artistlabel');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete artist label', 12, 'delete_artistlabel');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view artist label', 12, 'view_artistlabel');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add artists', 13, 'add_artists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change artists', 13, 'change_artists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete artists', 13, 'delete_artists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view artists', 13, 'view_artists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add countries', 14, 'add_countries');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change countries', 14, 'change_countries');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete countries', 14, 'delete_countries');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view countries', 14, 'view_countries');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add django migrations', 15, 'add_djangomigrations');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change django migrations', 15, 'change_djangomigrations');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete django migrations', 15, 'delete_djangomigrations');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view django migrations', 15, 'view_djangomigrations');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add genres', 16, 'add_genres');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change genres', 16, 'change_genres');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete genres', 16, 'delete_genres');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view genres', 16, 'view_genres');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add instruments', 17, 'add_instruments');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change instruments', 17, 'change_instruments');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete instruments', 17, 'delete_instruments');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view instruments', 17, 'view_instruments');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add labels', 18, 'add_labels');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change labels', 18, 'change_labels');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete labels', 18, 'delete_labels');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view labels', 18, 'view_labels');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add logging', 19, 'add_logging');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change logging', 19, 'change_logging');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete logging', 19, 'delete_logging');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view logging', 19, 'view_logging');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add playlist abstr user', 20, 'add_playlistabstruser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change playlist abstr user', 20, 'change_playlistabstruser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete playlist abstr user', 20, 'delete_playlistabstruser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view playlist abstr user', 20, 'view_playlistabstruser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (81, 'Can add playlist track', 21, 'add_playlisttrack');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (82, 'Can change playlist track', 21, 'change_playlisttrack');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (83, 'Can delete playlist track', 21, 'delete_playlisttrack');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (84, 'Can view playlist track', 21, 'view_playlisttrack');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (85, 'Can add playlists', 22, 'add_playlists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (86, 'Can change playlists', 22, 'change_playlists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (87, 'Can delete playlists', 22, 'delete_playlists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (88, 'Can view playlists', 22, 'view_playlists');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (89, 'Can add subscriptions', 23, 'add_subscriptions');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (90, 'Can change subscriptions', 23, 'change_subscriptions');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (91, 'Can delete subscriptions', 23, 'delete_subscriptions');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (92, 'Can view subscriptions', 23, 'view_subscriptions');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (93, 'Can add track genre', 24, 'add_trackgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (94, 'Can change track genre', 24, 'change_trackgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (95, 'Can delete track genre', 24, 'delete_trackgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (96, 'Can view track genre', 24, 'view_trackgenre');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (97, 'Can add tracks', 25, 'add_tracks');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (98, 'Can change tracks', 25, 'change_tracks');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (99, 'Can delete tracks', 25, 'delete_tracks');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (100, 'Can view tracks', 25, 'view_tracks');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (101, 'Can add users', 26, 'add_users');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (102, 'Can change users', 26, 'change_users');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (103, 'Can delete users', 26, 'delete_users');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (104, 'Can view users', 26, 'view_users');


--
-- TOC entry 3675 (class 0 OID 28198)
-- Dependencies: 271
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3669 (class 0 OID 28163)
-- Dependencies: 265
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3665 (class 0 OID 28146)
-- Dependencies: 261
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-12-06 12:56:23.84245+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'admin', '0001_initial', '2022-12-06 12:56:24.023009+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0002_logentry_remove_auto_add', '2022-12-06 12:56:24.051177+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-06 12:56:24.06155+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2022-12-06 12:56:24.086136+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0001_initial', '2022-12-06 12:56:24.184928+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-12-06 12:56:24.199089+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-12-06 12:56:24.211513+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-12-06 12:56:24.223643+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-12-06 12:56:24.237117+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-12-06 12:56:24.24155+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-06 12:56:24.254412+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-12-06 12:56:24.266571+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-06 12:56:24.272309+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-12-06 12:56:24.299487+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-12-06 12:56:24.325703+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-06 12:56:24.336038+03');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2022-12-06 12:56:24.38046+03');


--
-- TOC entry 3676 (class 0 OID 28229)
-- Dependencies: 272
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3663 (class 0 OID 26064)
-- Dependencies: 259
-- Data for Name: logging; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 12:43:32.057334', 'Delete abstract_user', 91, 'helpme', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 12:43:32.057334', 'Delete abstract_user', 92, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 12:43:32.057334', 'Delete abstract_user', 93, 'helpme2', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:43:32.057334', 'Insert abstract_user', 94, 'helpme', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:43:32.057334', 'Insert abstract_user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:43:32.057334', 'Insert abstract_user', 96, 'helpme2', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:45:36.158142', 'Insert user', 94, 'helpme', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:46:07.994525', 'Insert user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:46:54.863016', 'Insert user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:47:35.145358', 'Insert user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('A', '2022-12-03 12:47:35.145358', 'Add subsription', 95, 'helpme1', 'user', 'Month');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:49:26.390523', 'Insert user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('A', '2022-12-03 12:49:26.390523', 'Add subsription', 95, 'helpme1', 'user', 'Week');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:51:07.108436', 'Update user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:51:07.108436', 'Update user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:51:07.108436', 'Update user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:51:07.108436', 'Update user', 95, 'helpme1', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:51:07.108436', 'Change subsription', 95, 'helpme1', 'user', 'Month');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 12:53:14.279746', 'Insert user', 96, 'helpme2', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('A', '2022-12-03 12:53:14.279746', 'Add subsription', 96, 'helpme2', 'user', 'Week');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:54:43.351357', 'Update user', 96, 'helpme2', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:54:43.351357', 'Change subsription', 96, 'helpme2', 'user', 'Month');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 12:55:03.238628', 'Update user', 96, 'helpme2', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:00:32.516051', 'Insert abstract_user', 97, 'NiallHoran', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:04:01.046399', 'Insert artist', 97, 'NiallHoran', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-03 13:47:48.669365', 'Update abstract_user', 97, 'NiallHoran', 'artist', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:52:00.097476', 'Insert artist''s instrument', 97, 'NiallHoran', 'artist', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:52:00.097476', 'Insert artist''s instrument', 97, 'NiallHoran', 'artist', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 13:55:22.326617', 'Delete artist''s instrument', 97, 'NiallHoran', 'artist', 'Vocals');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 13:55:22.326617', 'Delete artist''s instrument', 97, 'NiallHoran', 'artist', 'Guitar');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:55:43.86617', 'Insert artist''s instrument', 97, 'NiallHoran', 'artist', 'Vocals');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 13:55:43.86617', 'Insert artist''s instrument', 97, 'NiallHoran', 'artist', 'Guitar');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 14:05:10.750144', 'Insert artist''s album', 97, 'NiallHoran', 'artist', 'Flicker');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 14:05:10.750144', 'Insert artist''s album', 97, 'NiallHoran', 'artist', 'Heartbreak weather');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:04:10.245729', 'Insert artist''s label', 97, 'NiallHoran', 'artist', 'Syco');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:04:10.245729', 'Insert artist''s label', 97, 'NiallHoran', 'artist', 'Columbia');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:04:10.245729', 'Insert artist''s label', 97, 'NiallHoran', 'artist', 'Capitol Records');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:10:44.272945', 'Insert artist''s genre', 97, 'NiallHoran', 'artist', 'Pop');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:10:44.272945', 'Insert artist''s genre', 97, 'NiallHoran', 'artist', 'soft rock');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:10:44.272945', 'Insert artist''s genre', 97, 'NiallHoran', 'artist', 'folk-pop');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:10:44.272945', 'Insert artist''s genre', 97, 'NiallHoran', 'artist', 'pop rock');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:33:18.557985', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'This town');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:33:18.557985', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Slow hands');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:33:18.557985', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Too much to ask');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:34:28.904283', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'This town');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:34:28.904283', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Slow hands');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:34:28.904283', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Too much to ask');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'This town');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'Slow hands');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'Too much to ask');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'This town');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'Slow hands');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-03 15:36:08.346855', 'Delete artist''s track', 97, 'NiallHoran', 'artist', 'Too much to ask');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 15:47:24.852248', 'Insert artist''s genre', 96, 'helpme2', 'user', 'Feelings');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 16:11:30.993043', 'Insert playlist''s track', 96, 'helpme2', 'user', 'Feelings This town');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-03 16:11:30.993043', 'Insert playlist''s track', 96, 'helpme2', 'user', 'Feelings Slow hands');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 19:38:30.854006', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Heartbreak weather');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 20:09:04.438587', 'Insert artist''s track', 97, 'NiallHoran', 'artist', 'Black and white');
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 22:06:39.5055', 'Insert abstract_user', 98, 'Tan', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 22:20:54.526727', 'Insert abstract_user', 101, 'Tanusha', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 22:32:30.180865', 'Insert abstract_user', 102, 'Tanusha123', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 23:02:17.041058', 'Insert abstract_user', 103, 'Tanusha13', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-05 23:04:37.516247', 'Insert abstract_user', 104, 'Ann', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-05 23:06:20.994087', 'Update abstract_user', 104, 'Ann', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-06 10:20:38.257183', 'Delete abstract_user', 98, 'Tan', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-06 10:20:38.257183', 'Delete abstract_user', 101, 'Tanusha', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-06 10:20:38.257183', 'Delete abstract_user', 102, 'Tanusha123', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-06 10:20:38.257183', 'Delete abstract_user', 103, 'Tanusha13', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('D', '2022-12-06 10:20:38.257183', 'Delete abstract_user', 104, 'Ann', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('I', '2022-12-06 07:25:32.906248', 'Insert abstract_user', 105, 'tanusha2002', 'user', NULL);
INSERT INTO public.logging (operation, "time", message, abstr_user_id, login, role_id, additional_info) VALUES ('U', '2022-12-06 07:27:09.94315', 'Update abstract_user', 105, 'tanusha2002', 'user', NULL);


--
-- TOC entry 3656 (class 0 OID 25477)
-- Dependencies: 252
-- Data for Name: playlists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.playlists (id, name) VALUES (1, 'Favourities');
INSERT INTO public.playlists (id, name) VALUES (4, 'Feelings');


--
-- TOC entry 3659 (class 0 OID 25485)
-- Dependencies: 255
-- Data for Name: playlist_abstr_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.playlist_abstr_user (playlist_id, abstr_user_id) VALUES (1, 3);
INSERT INTO public.playlist_abstr_user (playlist_id, abstr_user_id) VALUES (4, 96);


--
-- TOC entry 3646 (class 0 OID 25415)
-- Dependencies: 242
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (1, 'DEMONS', '02:57:00', 174385925, 19047354395, 'somewhere', 22, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (2, 'RADIOACTIVE', '03:06:00', 46327462, 42738497342, 'somwhere', 22, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (3, 'BELIEVER', '03:24:00', 465374342, 357865345, 'somwhere', 24, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (4, 'WHATEVER IT TAKES', '03:21:00', 265374342, 457865345, 'somwhere', 24, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (5, 'NATURAL', '03:09:00', 365374342, 857865345, 'somwhere', 25, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (6, 'BAD LIER', '04:20:00', 465374342, 897865345, 'somwhere', 25, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (7, 'PILLOWTALK', '03:22:00', 1365374342, 1857865345, 'somwhere', 7, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (8, 'DUSK TILL DOWN', '04:27:00', 1865374342, 2057865345, 'somwhere', 8, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (9, 'GOOD YEARS', '03:00:00', 965374342, 1557865345, 'somwhere', 8, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (10, 'OUTSIDE', '03:28:00', 665374342, 1057865345, 'somwhere', 9, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (24, 'This town', '03:52:00', 4385925, 10354395, '', 28, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (25, 'Slow hands', '03:07:00', 5485925, 8354395, '', 28, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (26, 'Too much to ask', '03:43:00', 3385925, 2354395, '', 28, 'photo', 'track');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (33, 'Heartbreak weather', '03:20:00', 0, 0, 'k[', 29, 'tracks/2022/12/05/heartbreak_weather.jpg', 'tracks/2022/12/05/Niall_Horan_-_Heartbreak_Weather.mp3');
INSERT INTO public.tracks (id, name, timing, likes, streaming, storage_path, album_id, photo, track) VALUES (35, 'Black and white', '03:29:00', 0, 0, 'jk', 29, 'tracks/2022/12/05/black_and_white_8CdwtId.jpg', 'tracks/2022/12/05/Niall_Horan_-_Black_And_White_0SniA70.mp3');


--
-- TOC entry 3662 (class 0 OID 25504)
-- Dependencies: 258
-- Data for Name: playlist_track; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (1, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (2, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (3, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (4, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (5, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (6, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (7, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (8, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (9, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (10, 1);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (24, 4);
INSERT INTO public.playlist_track (track_id, playlist_id) VALUES (25, 4);


--
-- TOC entry 3620 (class 0 OID 25266)
-- Dependencies: 216
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subscriptions (id, title, cost) VALUES (1, 'Year', '$134.56');
INSERT INTO public.subscriptions (id, title, cost) VALUES (2, 'Month', '$13.00');
INSERT INTO public.subscriptions (id, title, cost) VALUES (3, 'Week', '$2.09');


--
-- TOC entry 3649 (class 0 OID 25431)
-- Dependencies: 245
-- Data for Name: track_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.track_genre (track_id, genre_id) VALUES (1, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (2, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (3, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (4, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (5, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (5, 7);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (5, 10);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (6, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (7, 2);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (8, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (9, 1);
INSERT INTO public.track_genre (track_id, genre_id) VALUES (10, 2);


--
-- TOC entry 3623 (class 0 OID 25277)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (3, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (5, 1);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (94, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (95, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (95, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (95, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (95, 2);
INSERT INTO public.users (abstr_user_id, subscription_id) VALUES (96, 2);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 212
-- Name: abstract_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abstract_users_id_seq', 105, true);


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 213
-- Name: abstract_users_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abstract_users_role_id_seq', 1, false);


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 235
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.albums_id_seq', 30, true);


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 238
-- Name: artist_album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_album_album_id_seq', 1, false);


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 237
-- Name: artist_album_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_album_artist_id_seq', 1, false);


--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 232
-- Name: artist_genre_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_genre_artist_id_seq', 1, false);


--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 233
-- Name: artist_genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_genre_genre_id_seq', 1, false);


--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 248
-- Name: artist_instrument_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_instrument_artist_id_seq', 1, false);


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 249
-- Name: artist_instrument_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_instrument_instrument_id_seq', 1, false);


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 227
-- Name: artist_label_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_label_artist_id_seq', 1, false);


--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 228
-- Name: artist_label_label_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artist_label_label_id_seq', 1, false);


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 223
-- Name: artists_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_country_id_seq', 1, false);


--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 222
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.artists_id_seq', 1, false);


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 268
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 270
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 266
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 104, true);


--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 220
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 228, true);


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 264
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 262
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 260
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 230
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 10, true);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 246
-- Name: instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instruments_id_seq', 7, true);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 225
-- Name: labels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.labels_id_seq', 12, true);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 254
-- Name: playlist_abstr_user_abstr_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlist_abstr_user_abstr_user_id_seq', 1, false);


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 253
-- Name: playlist_abstr_user_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlist_abstr_user_playlist_id_seq', 1, false);


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 257
-- Name: playlist_track_playlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlist_track_playlist_id_seq', 1, false);


--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 256
-- Name: playlist_track_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlist_track_track_id_seq', 1, false);


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 251
-- Name: playlists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.playlists_id_seq', 4, true);


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 210
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 215
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 3, true);


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 244
-- Name: track_genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.track_genre_genre_id_seq', 1, false);


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 243
-- Name: track_genre_track_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.track_genre_track_id_seq', 1, false);


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 241
-- Name: tracks_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tracks_album_id_seq', 1, false);


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 240
-- Name: tracks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tracks_id_seq', 35, true);


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_abstr_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_abstr_user_id_seq', 1, false);


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 218
-- Name: users_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_subscription_id_seq', 1, false);


-- Completed on 2022-12-06 13:20:43

--
-- PostgreSQL database dump complete
--

