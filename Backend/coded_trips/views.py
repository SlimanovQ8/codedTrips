from django.shortcuts import render, HttpResponse

# Create your views here.
from rest_framework import generics

from .serializers import UserCreateSerializer


class UserCreateAPIView(generics.CreateAPIView):
    serializer_class = UserCreateSerializer

def hi_django(request):
    return HttpResponse("mla golazo dhbrtyujfhel merenque")