# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AbstractUsers(models.Model):
    id = models.BigAutoField(primary_key=True)
    role = models.ForeignKey('Roles', models.DO_NOTHING)
    login = models.CharField(unique=True, max_length=100)
    email = models.CharField(unique=True, max_length=256)
    password = models.TextField()

    class Meta:
        managed = False
        db_table = 'abstract_users'


class Albums(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=150)
    release_date = models.SmallIntegerField()
    image = models.ImageField(upload_to="photos/%Y/%m/%d/", null=True, default=None)

    class Meta:
        db_table = 'albums'


class ArtistAlbum(models.Model):
    artist = models.OneToOneField('Artists', models.DO_NOTHING, primary_key=True)
    album = models.ForeignKey(Albums, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'artist_album'
        unique_together = (('artist', 'album'),)


class ArtistGenre(models.Model):
    artist = models.OneToOneField('Artists', models.DO_NOTHING, primary_key=True)
    genre = models.ForeignKey('Genres', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'artist_genre'
        unique_together = (('artist', 'genre'),)


class ArtistInstrument(models.Model):
    artist = models.OneToOneField('Artists', models.DO_NOTHING, primary_key=True)
    instrument = models.ForeignKey('Instruments', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'artist_instrument'
        unique_together = (('artist', 'instrument'),)


class ArtistLabel(models.Model):
    artist = models.OneToOneField('Artists', models.DO_NOTHING, primary_key=True)
    label = models.ForeignKey('Labels', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'artist_label'
        unique_together = (('artist', 'label'),)


class Artists(models.Model):
    id = models.OneToOneField(AbstractUsers, models.DO_NOTHING, db_column='id', primary_key=True)
    name = models.CharField(unique=True, max_length=747)
    country = models.ForeignKey('Countries', models.DO_NOTHING)
    website = models.CharField(unique=True, max_length=256)
    tour_dates = models.SmallIntegerField()

    class Meta:
        managed = False
        db_table = 'artists'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Countries(models.Model):
    id = models.SmallAutoField(primary_key=True)
    title = models.CharField(unique=True, max_length=56)
    iso = models.CharField(unique=True, max_length=2)

    class Meta:
        managed = False
        db_table = 'countries'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Genres(models.Model):
    id = models.SmallAutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'genres'


class Instruments(models.Model):
    id = models.SmallAutoField(primary_key=True)
    title = models.CharField(unique=True, max_length=50)

    class Meta:
        managed = False
        db_table = 'instruments'


class Labels(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(unique=True, max_length=150)
    website = models.CharField(max_length=256, blank=True, null=True)
    foundation_year = models.SmallIntegerField()

    class Meta:
        managed = False
        db_table = 'labels'


class Logging(models.Model):
    operation = models.CharField(max_length=1)
    time = models.DateTimeField()
    message = models.CharField(max_length=100)
    abstr_user_id = models.IntegerField()
    login = models.CharField(max_length=100)
    role_id = models.CharField(max_length=100)
    additional_info = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'logging'


class PlaylistAbstrUser(models.Model):
    playlist = models.OneToOneField('Playlists', models.DO_NOTHING, primary_key=True)
    abstr_user = models.ForeignKey(AbstractUsers, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'playlist_abstr_user'
        unique_together = (('playlist', 'abstr_user'),)


class PlaylistTrack(models.Model):
    track = models.OneToOneField('Tracks', models.DO_NOTHING, primary_key=True)
    playlist = models.ForeignKey('Playlists', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'playlist_track'
        unique_together = (('track', 'playlist'),)


class Playlists(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=150)

    class Meta:
        managed = False
        db_table = 'playlists'


class Roles(models.Model):
    id = models.SmallAutoField(primary_key=True)
    role = models.CharField(unique=True, max_length=100)

    class Meta:
        managed = False
        db_table = 'roles'


class Subscriptions(models.Model):
    id = models.SmallAutoField(primary_key=True)
    title = models.CharField(unique=True, max_length=150)
    cost = models.TextField(blank=True, null=True)  # This field type is a guess.

    class Meta:
        managed = False
        db_table = 'subscriptions'


class TrackGenre(models.Model):
    track = models.OneToOneField('Tracks', models.DO_NOTHING, primary_key=True)
    genre = models.ForeignKey(Genres, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'track_genre'
        unique_together = (('track', 'genre'),)


class Tracks(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=150)
    timing = models.TimeField()
    likes = models.BigIntegerField()
    streaming = models.BigIntegerField()
    storage_path = models.FileField(upload_to="media/%Y/%m/%d/")
    album = models.ForeignKey(Albums, models.DO_NOTHING)

    class Meta:
        db_table = 'tracks'


class Users(models.Model):
    abstr_user = models.ForeignKey(AbstractUsers, models.DO_NOTHING)
    subscription = models.ForeignKey(Subscriptions, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'users'
