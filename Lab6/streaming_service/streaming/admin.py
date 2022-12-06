from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from streaming.models import Tracks, Albums, Genres, Labels, Roles, Artists, Users, Playlists, Logging, AbstractUsers
from django.utils.translation import gettext_lazy as _


class AbstractUsersConfig(UserAdmin):
    fieldsets = (
        (None, {'fields': ('login','username', 'email', 'password')}),
        (_('Permissions'), {'fields': ('is_active', 'is_staff', 'is_superuser',
                                       'groups', 'user_permissions')}),
        (_('Important dates'), {'fields': ('last_login',)}),
    )
    add_filedsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password', 'password2')}
         ),
    )
    # form = CustomUserChangeForm
    # add_form = CustomUserCreationForm
    list_display = ('email', 'is_staff')
    search_fields = ('email',)
    ordering = ('email',)

    # search_fields = ('email', 'login', 'username', 'role')
    # list_display = ('email', 'login', 'role', 'username', 'is_active', 'is_staff')
    # exclude = ('date_joined', )


admin.site.register(Tracks)
admin.site.register(AbstractUsers, AbstractUsersConfig)
admin.site.register(Albums)
admin.site.register(Genres)
admin.site.register(Labels)
admin.site.register(Roles)
admin.site.register(Artists)
admin.site.register(Users)
admin.site.register(Playlists)
admin.site.register(Logging)