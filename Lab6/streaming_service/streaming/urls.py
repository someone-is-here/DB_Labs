from django.urls import path

from streaming.views import Home, AlbumsListView, TracksListView, ArtistsListView, PlaylistsListView

urlpatterns = [
    path('', Home.as_view(), name='home'),
    path('playlists/', PlaylistsListView.as_view(), name='playlists'),
    path('tracks/', TracksListView.as_view(), name='tracks'),
    path('albums/', AlbumsListView.as_view(), name='albums'),
    path('artists/', ArtistsListView.as_view(), name='artists'),
]
