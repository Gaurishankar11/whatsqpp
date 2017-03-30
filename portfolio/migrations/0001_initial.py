# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=60)),
                ('description', models.TextField(null=True, blank=True)),
                ('url', models.CharField(max_length=100)),
                ('created_date', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_date', models.DateTimeField(auto_now=True, null=True)),
                ('is_active', models.CharField(default=b'1', max_length=1, choices=[(b'1', b'1'), (b'0', b'0')])),
                ('order_sequence', models.IntegerField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='ProjectImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('images', models.ImageField(upload_to=b'media')),
            ],
        ),
        migrations.CreateModel(
            name='Technology',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('technology_name', models.CharField(max_length=60)),
                ('technology_image', models.ImageField(upload_to=b'media', blank=True)),
            ],
        ),
        migrations.AddField(
            model_name='project',
            name='images',
            field=models.ManyToManyField(to='portfolio.ProjectImage'),
        ),
        migrations.AddField(
            model_name='project',
            name='technologies',
            field=models.ManyToManyField(to='portfolio.Technology'),
        ),
    ]
