from django.urls import path

from streaming.views import Home, AlbumsListView, TracksListView, ArtistsListView, PlaylistsListView, TrackCreateView, \
    AlbumCreateView, TrackDetailView, AlbumDetailView, TrackUpdateView, TrackDeleteView, AlbumUpdateView, \
    AlbumDeleteView, PlaylistListView, RegisterAbstractUser

urlpatterns = [
    path('', Home.as_view(), name='home'),
    path('playlists/', PlaylistsListView.as_view(), name='playlists'),
    path('register/', RegisterAbstractUser.as_view(), name='register'),
    path('login/', PlaylistsListView.as_view(), name='login'),
    path('logout/', PlaylistsListView.as_view(), name='logout'),
    path('playlist/<int:playlist_id>/listen/', PlaylistListView.as_view(), name='selected_playlist'),
    path('tracks/', TracksListView.as_view(), name='tracks'),
    path('tracks/create/', TrackCreateView.as_view(), name='create_track'),
    path('tracks/<int:track_id>/', TrackDetailView.as_view(), name='detail_track'),
    path('tracks/<int:track_id>/update/', TrackUpdateView.as_view(), name='update_track'),
    path('tracks/<int:track_id>/delete/', TrackDeleteView.as_view(), name='delete_track'),
    path('albums/create/', AlbumCreateView.as_view(), name='create_album'),
    path('albums/<int:album_id>/', AlbumDetailView.as_view(), name='detail_album'),
    path('albums/<int:album_id>/update/', AlbumUpdateView.as_view(), name='update_album'),
    path('albums/<int:album_id>/delete/', AlbumDeleteView.as_view(), name='delete_album'),
    path('albums/', AlbumsListView.as_view(), name='albums'),
    path('artists/', ArtistsListView.as_view(), name='artists'),
]
