# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='technology',
            old_name='technology_name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='technology',
            old_name='technology_image',
            new_name='symbol',
        ),
        migrations.RemoveField(
            model_name='project',
            name='order_sequence',
        ),
        migrations.AlterField(
            model_name='project',
            name='is_active',
            field=models.BooleanField(default=False, max_length=1),
        ),
    ]
