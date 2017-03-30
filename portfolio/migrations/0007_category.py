# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0006_auto_20170329_0939'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20)),
                ('status', models.CharField(default=b'INACTIVE', max_length=20, choices=[(b'ACTIVE', b'Active'), (b'INACTIVE', b'In Active')])),
            ],
        ),
    ]
