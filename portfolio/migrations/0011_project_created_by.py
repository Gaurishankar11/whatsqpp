# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0010_auto_20170330_1253'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='created_by',
            field=models.CharField(max_length=100, null=True, blank=True),
        ),
    ]
