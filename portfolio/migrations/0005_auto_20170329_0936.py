# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0004_project_content'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='project',
            name='content',
        ),
        migrations.AlterField(
            model_name='project',
            name='description',
            field=ckeditor.fields.RichTextField(default=b'Description of project'),
        ),
        migrations.AlterField(
            model_name='project',
            name='is_active',
            field=models.BooleanField(default=False, help_text=b'Select if the project is activeself.', max_length=1),
        ),
    ]
