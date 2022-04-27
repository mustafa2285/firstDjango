from django.contrib import admin
from  .models import Blog, Category
from django.utils.safestring import mark_safe

class BlogAdmin(admin.ModelAdmin):
    list_display = ("title", "is_active","slug","selected_category")
    list_editable = ("is_active",)
    search_fields = ("title", "description",)
    readonly_fields = ("slug",)
    list_filter = ("categories","is_active",)

    def selected_category(self, obj):
        html = "<ul>"
        
        for category in obj.categories.all():
            html += "<li>" + category.name + "</li>"
        html += "<ul>"
        return mark_safe(html)

admin.site.register(Blog, BlogAdmin)
admin.site.register(Category)
