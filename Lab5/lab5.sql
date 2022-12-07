drop table logging;
CREATE TABLE logging(
    operation VARCHAR(1) NOT NULL,
    time TIMESTAMP NOT NULL,
	message VARCHAR(500) NOT NULL,
	abstr_user_id INTEGER NOT NULL,
    login VARCHAR(100) NOT NULL,
	role_id	VARCHAR(100) NOT NULL,
	additional_info VARCHAR(500)
);

CREATE OR REPLACE FUNCTION process_abstract_user() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete abstract_user', OLD.id, OLD.login, roles.role from roles WHERE roles.id=OLD.role_id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update abstract_user', NEW.id, NEW.login, roles.role from roles WHERE roles.id=NEW.role_id;
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert abstract_user', NEW.id, NEW.login, roles.role from roles WHERE roles.id=NEW.role_id;
            RETURN NEW;
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON abstract_users
    FOR EACH ROW EXECUTE PROCEDURE process_abstract_user();
	

CREATE OR REPLACE FUNCTION process_user() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'UPDATE') THEN
			IF(NEW.subscription_id != OLD.subscription_id) THEN
				INSERT INTO logging SELECT 'U', now(), 'Change subsription', abstract_users.id, abstract_users.login, roles.role, subscriptions.title from abstract_users
				INNER JOIN roles ON roles.id=abstract_users.role_id
				INNER JOIN subscriptions ON NEW.subscription_id=subscriptions.id
				AND NEW.abstr_user_id=abstract_users.id;
			END IF;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN			
			INSERT INTO logging SELECT 'A', now(), 'Add subsription', abstract_users.id, abstract_users.login, roles.role, subscriptions.title from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN subscriptions ON NEW.subscription_id=subscriptions.id
			AND NEW.abstr_user_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON users
    FOR EACH ROW EXECUTE PROCEDURE process_user();
	

CREATE OR REPLACE FUNCTION process_artist_instruments() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete artist''s instrument', abstract_users.id, abstract_users.login, roles.role, instruments.title from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN instruments ON instruments.id=OLD.instrument_id
			AND OLD.artist_id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update artist''s instrument', abstract_users.id, abstract_users.login, roles.role, instruments.title from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN instruments ON instruments.id=NEW.instrument_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert artist''s instrument', abstract_users.id, abstract_users.login, roles.role, instruments.title from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN instruments ON instruments.id=NEW.instrument_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON artist_instrument
    FOR EACH ROW EXECUTE PROCEDURE process_artist_instruments();

CREATE OR REPLACE FUNCTION process_artist_label() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete artist''s label', abstract_users.id, abstract_users.login, roles.role, labels.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN labels ON labels.id=OLD.label_id
			AND OLD.artist_id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update artist''s label', abstract_users.id, abstract_users.login, roles.role, labels.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN labels ON labels.id=NEW.label_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert artist''s label', abstract_users.id, abstract_users.login, roles.role, labels.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN labels ON labels.id=NEW.label_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON artist_label
    FOR EACH ROW EXECUTE PROCEDURE process_artist_label();
	

CREATE OR REPLACE FUNCTION process_artist_genre() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete artist''s genre', abstract_users.id, abstract_users.login, roles.role, genres.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN genres ON genres.id=OLD.genre_id
			AND OLD.artist_id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update artist''s genre', abstract_users.id, abstract_users.login, roles.role, genres.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN genres ON genres.id=NEW.genre_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert artist''s genre', abstract_users.id, abstract_users.login, roles.role, genres.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN genres ON genres.id=NEW.genre_id
			AND NEW.artist_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON artist_genre
    FOR EACH ROW EXECUTE PROCEDURE process_artist_genre();


CREATE OR REPLACE FUNCTION process_artist_track() RETURNS TRIGGER AS $logging$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete artist''s track', abstract_users.id, abstract_users.login, roles.role, OLD.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN artist_album ON artist_album.album_id = OLD.album_id
			INNER JOIN artists ON artist_album.artist_id = artists.id
			AND artists.id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update artist''s track', abstract_users.id, abstract_users.login, roles.role, NEW.name  from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN artist_album ON artist_album.album_id = NEW.album_id
			INNER JOIN artists ON artist_album.artist_id = artists.id
			AND artists.id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert artist''s track', abstract_users.id, abstract_users.login, roles.role, NEW.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN artist_album ON artist_album.album_id = NEW.album_id
			INNER JOIN artists ON artist_album.artist_id = artists.id
			AND artists.id=abstract_users.id;
			RETURN NEW;
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON tracks
    FOR EACH ROW EXECUTE PROCEDURE process_artist_track();

CREATE OR REPLACE FUNCTION process_abstract_user_playlist() RETURNS TRIGGER AS $logging$
     BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete playlist', abstract_users.id, abstract_users.login, roles.role, playlists.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=OLD.playlist_id
			AND OLD.abstr_user_id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update playlist', abstract_users.id, abstract_users.login, roles.role,  playlists.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=NEW.playlist_id
			AND NEW.abstr_user_id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert playlist', abstract_users.id, abstract_users.login, roles.role, playlists.name from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=NEW.playlist_id
			AND NEW.abstr_user_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON playlist_abstr_user
    FOR EACH ROW EXECUTE PROCEDURE process_abstract_user_playlist();


CREATE OR REPLACE FUNCTION process_playlist_track() RETURNS TRIGGER AS $logging$
     BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO logging SELECT 'D', now(), 'Delete playlist''s track', abstract_users.id, abstract_users.login, roles.role, concat('remove from playlist: ', playlists.name, ' track: ', tracks.name) from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=OLD.playlist_id
			INNER JOIN playlist_abstr_user ON playlist_abstr_user.playlist_id = playlists.id
			INNER JOIN tracks ON tracks.id=OLD.track_id
			AND playlist_abstr_user.abstr_user_id=abstract_users.id;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN
            INSERT INTO logging SELECT 'U', now(), 'Update playlist''s track', abstract_users.id, abstract_users.login, roles.role, concat('update playlist: ', playlists.name, ' track: ', tracks.name) from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=NEW.playlist_id
			INNER JOIN playlist_abstr_user ON playlist_abstr_user.playlist_id = playlists.id
			INNER JOIN tracks ON tracks.id=NEW.track_id
			AND playlist_abstr_user.abstr_user_id=abstract_users.id;
			RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO logging SELECT 'I', now(), 'Insert playlist''s track', abstract_users.id, abstract_users.login, roles.role, concat('insert into playlist: ', playlists.name, ' track: ', tracks.name) from abstract_users
			INNER JOIN roles ON roles.id=abstract_users.role_id
			INNER JOIN playlists ON playlists.id=NEW.playlist_id
			INNER JOIN playlist_abstr_user ON playlist_abstr_user.playlist_id = playlists.id
			INNER JOIN tracks ON tracks.id=NEW.track_id
			AND playlist_abstr_user.abstr_user_id=abstract_users.id;
			RETURN NEW;
			
        END IF;
        RETURN NULL; -- возвращаемое значение для триггера AFTER игнорируется
    END;
$logging$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER logging
AFTER INSERT OR UPDATE OR DELETE ON playlist_track
    FOR EACH ROW EXECUTE PROCEDURE process_playlist_track();

