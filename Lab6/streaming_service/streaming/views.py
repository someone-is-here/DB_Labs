from django.shortcuts import render

from django.views.generic import TemplateView
from django.views.generic.list import ListView
from streaming.models import Albums, Tracks, Artists, Playlists

from django.db import connection


menu_items = [
    {'title': 'Playlists', 'url_name': 'playlists'},
    {'title': 'Artists', 'url_name': 'artists'},
    {'title': 'Albums', 'url_name': 'albums'},
    {'title': 'Tracks', 'url_name': 'tracks'},
]


class Home(TemplateView):
    template_name = 'streaming/index.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'
        context['menu_items'] = menu_items

        return context


class AlbumsListView(TemplateView):
    template_name = 'streaming/albums.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'
        context['menu_items'] = menu_items
        context['albums'] = Albums.objects.raw('SELECT * FROM albums')

        return context


class TracksListView(TemplateView):
    template_name = 'streaming/tracks.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'
        context['menu_items'] = menu_items
        context['tracks'] = Tracks.objects.raw('SELECT * FROM tracks')

        return context


class ArtistsListView(TemplateView):
    template_name = 'streaming/artists.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'
        context['menu_items'] = menu_items

        context['artists'] = Artists.objects.raw(" select A.name, A.website, A.tour_dates, C.title as country_title, C.id, A.country_id "
                                                 "from artists A "
                                                 "INNER JOIN countries C ON A.country_id=C.id")
        print(context['artists'])

        return context


class PlaylistsListView(TemplateView):
    template_name = 'streaming/playlists.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'
        context['menu_items'] = menu_items
        context['playlists'] = list(Playlists.objects.raw("SELECT P.id, P.name FROM playlists AS P "))
        for i in range(len(context['playlists'])):
            query = "SELECT T.id, T.name from tracks as T " \
                "INNER JOIN playlist_track as PT ON PT.track_id=T.id " \
                "WHERE %s=PT.playlist_id" % context['playlists'][i].id
            context['playlists'][i] = {'name': context['playlists'][i].name,
                                       'tracks': Tracks.objects.raw(query)}
            # print(context['playlists'][i])
            # context['tracks'] = {}
            # context['tracks'][context['playlists'][i].id] =
            # print(len(list(context['tracks'][context['playlists'][i].id])))

        return context
