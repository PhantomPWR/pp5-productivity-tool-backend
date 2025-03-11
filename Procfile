
release: python manage.py migrate
release: python manage.py collectstatic --noinput
release: python manage.py makemigrations && python manage.py migrate
 web: gunicorn drf_api.wsgi