# Generated by Django 3.1 on 2020-09-01 14:24

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('projects', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AddField(
            model_name='ess',
            name='asset_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.energyproduction'),
        ),
        migrations.AddField(
            model_name='energystorage',
            name='scenario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.scenario'),
        ),
        migrations.AddField(
            model_name='energyproduction',
            name='scenario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.scenario'),
        ),
        migrations.AddField(
            model_name='energyconversion',
            name='scenario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.scenario'),
        ),
        migrations.AddField(
            model_name='energyconsumption',
            name='scenario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.scenario'),
        ),
        migrations.AddField(
            model_name='comment',
            name='project',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='projects.project'),
        ),
        migrations.AddField(
            model_name='dischargingpower',
            name='scenario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='projects.scenario'),
        ),
    ]
