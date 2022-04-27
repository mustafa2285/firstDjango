from unicodedata import category
from django.shortcuts import render
from django.http.response import HttpResponse
from blog.models import Blog, Category
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model


# Create your views here.


def index(request):
    context = {
        'users': get_user_model().objects.all(),
        "blogs": Blog.objects.filter(is_active=True),
        "categories": Category.objects.all()
    }
    return render(request, 'blog/index.html', context)

def blogs(request):
    context = {
        "blogs": Blog.objects.filter(is_active=True),
        "categories": Category.objects.all()
    }
    return render(request, 'blog/blogs.html', context)

def blog_details(request, slug):
    blog = Blog.objects.get(slug=slug)
    return render(request, 'blog/blog_details.html',{"blog" : blog})


def blogs_by_category(request, slug):
    context = {
    # "blogs": Blog.objects.filter(is_active=True, category__slug=slug),
    "blogs": Category.objects.get(slug=slug).blog_set.filter(is_active=True),
    "categories": Category.objects.all(),
    "selected_category": slug
    }
    return render(request, 'blog/index.html', context)

def blogs_by_user(request, slug):
    context = {
    # "blogs": Blog.objects.filter(is_active=True, category__slug=slug),
    "blogs": get_user_model.objects.filter(is_active=True, user__slug=slug),
    "users": get_user_model().objects.all(),
    }
    return render(request, 'blog/index.html', context)