from django.shortcuts import render
from django.views.generic import View
from django.shortcuts import render, get_object_or_404

# Create your views here.


class LandingView(View):
    """
    """
    def get(self, request):
        data = {}
        return render(request, 'portal/landing.html', data)

