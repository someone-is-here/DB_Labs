from django.urls import path, include

from streaming_app.views import Home

urlpatterns = [
    path('', Home.as_view(), name='home')
]