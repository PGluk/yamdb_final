#!/bin/sh
#---------------------------------------------------------------
# This script automates the process of initial project settings.
#---------------------------------------------------------------
echo "Apply database migrations"
python /code/manage.py migrate --noinput
echo "Collect static files"
python /code/manage.py collectstatic --no-input
echo "Create superuser"
python /code/manage.py createsuperuser

exec "$@"
