# Generated by Django 3.2 on 2023-10-16 14:39

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='MyUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('username', models.CharField(max_length=128, unique='true', verbose_name='nombre_usuario')),
                ('email', models.EmailField(max_length=254, unique='true', verbose_name='email')),
                ('activo', models.BooleanField(verbose_name='activo')),
                ('create_date', models.DateTimeField(auto_now_add=True, max_length=256, verbose_name='fecha_creación')),
                ('update_date', models.DateTimeField(auto_now=True, max_length=256, verbose_name='fecha_edición')),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
