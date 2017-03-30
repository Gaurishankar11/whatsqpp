# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0005_auto_20170329_0936'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='project',
            options={'ordering': ['oreder_sequence']},
        ),
        migrations.AddField(
            model_name='project',
            name='oreder_sequence',
            field=models.IntegerField(default=0),
        ),
    ]
