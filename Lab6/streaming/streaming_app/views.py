from django.shortcuts import render
from django.views.generic import TemplateView


class Home(TemplateView):
    template_name = 'streaming_app/index.html'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'home'

        return context

    # def get_queryset(self):
    #     return Station.objects.filter(state='running')
