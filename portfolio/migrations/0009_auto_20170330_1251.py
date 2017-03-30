# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('portfolio', '0008_auto_20170330_1015'),
    ]

    operations = [
        migrations.CreateModel(
            name='Database',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20)),
                ('db_type', models.CharField(default=b'Other', max_length=20, choices=[(b'NoSql', b'NoSql'), (b'RDBMS', b'RDBMS'), (b'Other', b'Other')])),
            ],
        ),
        migrations.CreateModel(
            name='Library',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Versioning',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=20)),
            ],
            options={
                'verbose_name_plural': 'Versioning',
            },
        ),
        migrations.AddField(
            model_name='project',
            name='client_name',
            field=models.CharField(max_length=60, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='project',
            name='dev_link',
            field=models.CharField(max_length=100, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='project',
            name='localization',
            field=models.BooleanField(default=False, help_text=b' ::- need to add.'),
        ),
        migrations.AddField(
            model_name='project',
            name='logo',
            field=models.ImageField(upload_to=b'media', blank=True),
        ),
        migrations.AddField(
            model_name='project',
            name='production_link',
            field=models.CharField(max_length=100, null=True, blank=True),
        ),
        migrations.AlterField(
            model_name='category',
            name='status',
            field=models.BooleanField(default=False, max_length=20),
        ),
        migrations.AddField(
            model_name='project',
            name='database_used',
            field=models.ManyToManyField(to='portfolio.Database'),
        ),
        migrations.AddField(
            model_name='project',
            name='third_party_library',
            field=models.ManyToManyField(to='portfolio.Library', null=True, blank=True),
        ),
        migrations.AddField(
            model_name='project',
            name='version_controll',
            field=models.ForeignKey(to='portfolio.Versioning', null=True),
        ),
    ]
