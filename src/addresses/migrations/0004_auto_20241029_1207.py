# -*- coding: utf-8 -*-
# Generated by Django 1.11.17 on 2024-10-29 12:07
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addresses', '0003_auto_20241029_1152'),
    ]

    operations = [
        migrations.AlterField(
            model_name='address',
            name='country',
            field=models.CharField(default='Viet Nam', max_length=120),
        ),
    ]
