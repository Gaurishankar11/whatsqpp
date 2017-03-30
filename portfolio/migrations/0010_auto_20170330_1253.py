# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0009_auto_20170330_1251'),
    ]

    operations = [
        migrations.RenameField(
            model_name='project',
            old_name='version_controll',
            new_name='version_control',
        ),
    ]
