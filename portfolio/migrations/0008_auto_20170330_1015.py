# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0007_category'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='project',
            options={'ordering': ['order_sequence']},
        ),
        migrations.RenameField(
            model_name='project',
            old_name='oreder_sequence',
            new_name='order_sequence',
        ),
        migrations.AddField(
            model_name='project',
            name='category',
            field=models.ForeignKey(blank=True, to='portfolio.Category', null=True),
        ),
    ]
