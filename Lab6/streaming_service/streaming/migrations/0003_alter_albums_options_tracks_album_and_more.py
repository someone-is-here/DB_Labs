# Generated by Django 4.1.3 on 2022-12-04 16:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('streaming', '0002_alter_tracks_options'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tracks',
            name='storage_path',
            field=models.FileField(upload_to='media/%Y/%m/%d/'),
        ),
    ]