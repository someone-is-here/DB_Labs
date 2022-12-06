menu_items = [
    {'title': 'Playlists', 'url_name': 'playlists'},
    {'title': 'Artists', 'url_name': 'artists'},
    {'title': 'Albums', 'url_name': 'albums'},
    {'title': 'Tracks', 'url_name': 'tracks'},
]


class DataMixin:
    def get_user_context(self, **kwargs):
        context = kwargs
        context['menu'] = menu_items

        return context
