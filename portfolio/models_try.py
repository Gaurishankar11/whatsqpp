from django.db import models


PROJECT_IMAGES_PATH = 'media'


class Project(models.Model):
    project_name        =       models.TextField(null=False,blank=False)

class Technology(models.Model):
    technology_name         =       models.TextField(null=False,blank=False)

# class ProjectImages(models.Model):
#     cover = models.ImageField("Image",upload_to=PROJECT_IMAGES_PATH,max_length=500, default=None)
#     obj = models.ForeignKey(Project)

class ProjectImages(models.Model):
    description = models.CharField(max_length=255, blank=True)
    images = models.FileField(upload_to=PROJECT_IMAGES_PATH,blank=True)
    project = models.ForeignKey(Project)