# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0003_auto_20170329_0759'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='content',
            field=ckeditor.fields.RichTextField(default=b'GS'),
        ),
    ]
