# -*- coding: utf-8 -*-
# Generated by Django 1.11.17 on 2024-09-29 12:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addresses', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='address',
            name='country',
            field=models.CharField(default='Vietnam', max_length=120),
        ),
    ]
