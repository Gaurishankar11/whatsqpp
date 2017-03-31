# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0011_project_created_by'),
    ]

    operations = [
        migrations.AddField(
            model_name='technology',
            name='description',
            field=models.CharField(default=b'', max_length=60, null=True, blank=True),
        ),
    ]
