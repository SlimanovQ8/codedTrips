from django.urls import path
from . import views

urlpatterns = [
    path('test', views.hi_django, name = "test")
]