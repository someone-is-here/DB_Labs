from django.shortcuts import reverse

from django.views.generic import TemplateView
from django.views.generic.list import ListView
from django.views.generic.edit import CreateView
from django.views.generic.detail import DetailView
from django.views.generic.edit import UpdateView
from streaming.forms import TracksForm, AlbumsForm, UserCreationForm, UserForm, ArtistForm
from streaming.models import Albums, Tracks, Artists, Playlists, Labels, Instruments, Genres
from django.views.generic.edit import FormView
from django.urls import reverse_lazy
from django.views.generic.edit import DeleteView

from streaming.utils import DataMixin


class Home(DataMixin, TemplateView):
    template_name = 'streaming/index.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='home')

        return dict(list(context.items()) + list(additional_context.items()))


class AlbumsListView(DataMixin, TemplateView):
    template_name = 'streaming/albums.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['albums'] = Albums.objects.raw('SELECT * FROM albums')
        additional_context = self.get_user_context(title='albums')

        return dict(list(context.items()) + list(additional_context.items()))


class TracksListView(DataMixin, TemplateView):
    template_name = 'streaming/tracks.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['tracks'] = Tracks.objects.raw('SELECT * FROM tracks')
        additional_context = self.get_user_context(title='tracks')
        print(context)
        print(additional_context)

        return dict(list(context.items()) + list(additional_context.items()))


class ArtistsListView(DataMixin, TemplateView):
    template_name = 'streaming/artists.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['artists'] = list(Artists.objects.raw(
            " select A.id, A.name, A.website, A.tour_dates, C.title as country_title, C.id, A.country_id "
            "from artists A "
            "INNER JOIN countries C ON A.country_id=C.id "))

        for i in range(len(context['artists'])):
            print(context['artists'][i].pk)
            query = "SELECT L.id, L.name as label_title, L.website as label_website, L.foundation_year as label_year FROM artist_label AL " \
                    "INNER JOIN labels L ON AL.label_id=L.id  WHERE %s=AL.artist_id " % context['artists'][i].pk
            query_instr = "SELECT I.id, I.title as instrument_title FROM artist_instrument AI " \
                          "INNER JOIN instruments I ON AI.instrument_id=I.id  WHERE %s=AI.artist_id " % \
                          context['artists'][i].pk
            query_genres = "SELECT G.id, G.name as genre_name FROM artist_genre AG " \
                           "INNER JOIN genres G ON AG.genre_id=G.id  WHERE %s=AG.artist_id " % \
                           context['artists'][i].pk
            context['artists'][i] = {'name': context['artists'][i].name,
                                     'website': context['artists'][i].website,
                                     'tour_dates': context['artists'][i].tour_dates,
                                     'country_title': context['artists'][i].country_title,
                                     'labels': Labels.objects.raw(query),
                                     'instruments': Instruments.objects.raw(query_instr),
                                     'genres': Genres.objects.raw(query_genres)}

        additional_context = self.get_user_context(title='artists')

        return dict(list(context.items()) + list(additional_context.items()))


class PlaylistsListView(DataMixin, TemplateView):
    template_name = 'streaming/playlists.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['playlists'] = list(Playlists.objects.raw("SELECT P.id, P.name FROM playlists AS P "))
        for i in range(len(context['playlists'])):
            query = "SELECT T.id, T.name from tracks as T " \
                    "INNER JOIN playlist_track as PT ON PT.track_id=T.id " \
                    "WHERE %s=PT.playlist_id" % context['playlists'][i].id
            context['playlists'][i] = {'id': context['playlists'][i].id,
                                       'name': context['playlists'][i].name,
                                       'tracks': Tracks.objects.raw(query)}
        additional_context = self.get_user_context(title='playlists')

        return dict(list(context.items()) + list(additional_context.items()))


class TrackCreateView(DataMixin, FormView):
    template_name = 'streaming/create.html'
    form_class = TracksForm

    def form_valid(self, form):
        form.save()
        return super().form_valid(form)

    def get_success_url(self):
        return reverse('tracks')


class TrackDetailView(DataMixin, DetailView):
    model = Tracks
    template_name = 'streaming/detail_track.html'
    pk_url_kwarg = 'track_id'
    context_object_name = 'item'

    def get_context_data(self, **kwargs):
        print(kwargs)
        context = super().get_context_data(**kwargs)
        # context['tracks'] = Tracks.objects.raw('SELECT * FROM tracks')
        additional_context = self.get_user_context(title='tracks')

        return dict(list(context.items()) + list(additional_context.items()))


class TrackUpdateView(DataMixin, UpdateView):
    model = Tracks
    pk_url_kwarg = 'track_id'
    fields = ['name', 'timing', 'storage_path', 'track', 'photo', 'album']
    template_name = 'streaming/create.html'
    success_url = reverse_lazy('tracks')

    def get_context_data(self, **kwargs):
        print(kwargs)
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='tracks')

        return dict(list(context.items()) + list(additional_context.items()))


class TrackDeleteView(DataMixin, DeleteView):
    model = Tracks
    pk_url_kwarg = 'track_id'
    template_name = 'streaming/delete.html'
    success_url = reverse_lazy('tracks')

    def get_context_data(self, **kwargs):
        print(kwargs)
        context = super().get_context_data(**kwargs)
        # context['tracks'] = Tracks.objects.raw('SELECT * FROM tracks')
        additional_context = self.get_user_context(title='tracks')

        return dict(list(context.items()) + list(additional_context.items()))


class AlbumCreateView(DataMixin, FormView):
    template_name = 'streaming/create.html'
    form_class = AlbumsForm

    def form_valid(self, form):
        form.save()
        return super().form_valid(form)

    def get_success_url(self):
        return reverse('albums')


class AlbumDetailView(DataMixin, DetailView):
    model = Albums
    template_name = 'streaming/detail_album.html'
    pk_url_kwarg = 'album_id'
    context_object_name = 'item'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='album')

        context['tracks'] = Tracks.objects.raw('SELECT T.id, T.name as track_name, T.timing, T.likes, T.streaming,'
                                               'T.track, T.photo, T.album_id FROM tracks T WHERE T.album_id=%s',
                                               [kwargs['object'].pk])
        print(context['tracks'])
        return dict(list(context.items()) + list(additional_context.items()))


class AlbumUpdateView(DataMixin, UpdateView):
    model = Albums
    pk_url_kwarg = 'album_id'
    fields = ['name', 'release_date', 'icon']
    template_name = 'streaming/create.html'
    success_url = reverse_lazy('albums', )

    def get_context_data(self, **kwargs):
        print(kwargs)
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='album')

        return dict(list(context.items()) + list(additional_context.items()))


class AlbumDeleteView(DataMixin, DeleteView):
    model = Albums
    pk_url_kwarg = 'album_id'
    template_name = 'streaming/delete.html'
    success_url = reverse_lazy('albums')

    def get_context_data(self, **kwargs):
        print(kwargs)
        context = super().get_context_data(**kwargs)
        # context['tracks'] = Tracks.objects.raw('SELECT * FROM tracks')
        additional_context = self.get_user_context(title='tracks')

        return dict(list(context.items()) + list(additional_context.items()))


class PlaylistListView(DataMixin, DetailView):
    model = Playlists
    template_name = 'streaming/tracks.html'
    pk_url_kwarg = 'playlist_id'
    context_object_name = 'item'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='playlist')

        print(kwargs['object'].id)
        context['tracks'] = Tracks.objects.raw('SELECT T.id, T.name, T.timing, T.likes, T.streaming,'
                                               'T.track, T.photo, T.album_id FROM tracks AS T '
                                               'INNER JOIN playlist_track AS PT ON PT.track_id=T.id '
                                               'WHERE PT.playlist_id=%s', [kwargs['object'].id])
        print(context['tracks'])
        return dict(list(context.items()) + list(additional_context.items()))


def _get_form(request, formcls, prefix):
    data = request.POST if prefix in request.POST else None
    return formcls(data, prefix=prefix)


class RegisterAbstractUser(DataMixin, TemplateView):
    template_name = 'streaming/register.html'
    my_context = None
    role = 1

    def __init__(self):
        print('new class')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        additional_context = self.get_user_context(title='register')
        context['role_id'] = self.role
        return dict(list(context.items()) + list(additional_context.items()))

    def get(self, request, *args, **kwargs):
        context = self.get_context_data()
        context['aform'] = UserCreationForm(prefix='aform_pre')
        context['cform'] = UserForm(prefix='cform_pre')
        context['bform'] = ArtistForm(prefix='bform_pre')
        self.my_context = context

        return self.render_to_response(context=self.my_context)

    def post(self, request, *args, **kwargs):
        context = self.get_context_data()

        if self.role == 1:
            aform = _get_form(request, UserCreationForm, 'aform_pre')
            context['aform'] = aform
            print(context['role_id'])

        if self.role == 2:
            bform = _get_form(request, ArtistForm, 'bform_pre')

            if bform.is_valid():
                return reverse_lazy('home')

            context['bform'] = bform
            return self.render_to_response(context=context)

        if self.role == 3:
            bform = _get_form(request, UserForm, 'bform_pre')

            if bform.is_valid():
                return reverse_lazy('home')

            context['bform'] = bform
            return self.render_to_response(context=context)

        if aform.is_valid():
            self.role = aform.instance.role_id
            if self.role == 3:
                context['bform'] = UserForm(prefix='bform_pre')
            if self.role == 2:
                context['bform'] = ArtistForm(prefix='bform_pre')

        print(aform.is_valid())
        print(aform.instance)
        context['role_id'] = self.role
        print(self.role)

        return self.render_to_response(context=context)




