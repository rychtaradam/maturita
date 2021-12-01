from django.shortcuts import render
from django.template import context


def index(request):

    return render(request, 'index.html')
