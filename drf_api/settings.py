"""
Django settings for drf_api project.
"""


from pathlib import Path
import os
import dj_database_url
import re

if os.path.exists('env.py'):
    import env

CLOUDINARY_STORAGE = {
    'CLOUDINARY_URL': os.environ.get('CLOUDINARY_URL'),
    'CLOUD_NAME': os.environ.get('CLOUD_NAME'),
    'API_SECRET': os.environ.get('API_SECRET'),
    'API_KEY': os.environ.get('API_KEY'),
}
print('CLOUDINARY_URL:', os.environ.get('CLOUDINARY_URL'))
print('CLOUD_NAME:', os.environ.get('CLOUD_NAME'))
print('API_SECRET:', os.environ.get('API_SECRET'))
print('API_KEY:', os.environ.get('API_KEY'))

MEDIA_URL = '/media/'
DEFAULT_FILE_STORAGE = 'cloudinary_storage.storage.MediaCloudinaryStorage'
STATICFILES_STORAGE = 'cloudinary_storage.storage.StaticHashedCloudinaryStorage'

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

if 'DEV' in os.environ:
    print('//////////// WE ARE IN DEV MODE ////////////')

# if 'DEV' in os.environ:
#     AUTHENTICATION_CLASS = 'rest_framework.authentication.SessionAuthentication'
#     print('Authentication: SessionAuthentication')
# else:
#     # AUTHENTICATION_CLASS = 'dj_rest_auth.jwt_auth.JWTCookieAuthentication'
#     # print('Authentication: JWTCookieAuthentication')
#     AUTHENTICATION_CLASS = 'rest_framework_simplejwt.authentication.JWTAuthentication'
#     print('Authentication: JWTAuthentication')

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        # AUTHENTICATION_CLASS,
        # 'rest_framework_simplejwt.authentication.JWTAuthentication',
        'dj_rest_auth.jwt_auth.JWTCookieAuthentication',
        'rest_framework.authentication.SessionAuthentication',
    ],
    'DEFAULT_PAGINATION_CLASS':
        'rest_framework.pagination.PageNumberPagination',
    'PAGE_SIZE': 10,
    'DATETIME_FORMAT': '%d %b %Y',
    'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.AllowAny',
    ),
}
if 'DEV' not in os.environ:
    REST_FRAMEWORK['DEFAULT_RENDERER_CLASSES'] = [
        'rest_framework.renderers.JSONRenderer',
    ]

# REST_USE_JWT = True
JWT_AUTH_SECURE = True
JWT_AUTH_COOKIE = 'drf-api-auth'
JWT_AUTH_REFRESH_COOKIE = 'drf-api-refresh-token'
JWT_AUTH_SAMESITE = 'None'

# REST_AUTH = {
#     'USE_JWT': True,
#     'JWT_AUTH_COOKIE:': 'drf-api-auth',
#     'JWT_AUTH_REFRESH_COOKIE': 'drf-api-refresh-token',
# }

REST_AUTH_SERIALIZERS = {
    'USER_DETAILS_SERIALIZER': 'drf_api.serializers.CurrentUserSerializer'
}

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.getenv('SECRET_KEY')

# SECURITY WARNING: don't run with debug turned on in production!
# DEBUG = True
DEBUG = 'DEV' in os.environ

# ALLOWED_HOSTS = [
#     'localhost',
#     '8000-phantompwr-pp5productiv-ne7lnrolz57.ws-eu98.gitpod.io',
#     '.ws-eu98.gitpod.io',
#     'pp5-productivity-tool.herokuapp.com',
# ]

ALLOWED_HOSTS = [
    os.environ.get('ALLOWED_HOST'),
    'localhost',
    '127.0.0.1',
    '.herokuapp.com',
    'localhost:5173',
    'localhost:3000',
    'pp5-productivity-tool.herokuapp.com',
]


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'cloudinary_storage',
    'django.contrib.staticfiles',
    'cloudinary',
    'rest_framework',
    'django_filters',
    'rest_framework.authtoken',
    'dj_rest_auth',
    'django.contrib.sites',
    'allauth',
    'allauth.account',
    'allauth.socialaccount',
    'dj_rest_auth.registration',
    'corsheaders',
    'rest_framework_simplejwt',

    'profiles',
    'tasks',
    'categories',
    'comments',
]
SITE_ID = 1

MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'allauth.account.middleware.AccountMiddleware',
]

# if 'CLIENT_ORIGIN' in os.environ:
#     CORS_ALLOWED_ORIGINS = [
#         os.environ.get('CLIENT_ORIGIN')
#      ]
# else:
#     CORS_ALLOWED_ORIGIN_REGEXES = [
#         r"^https://.*\.gitpod\.io$",
#      ]

CORS_ALLOW_ALL_ORIGINS = True


if 'CLIENT_ORIGIN' in os.environ:
    CORS_ALLOWED_ORIGINS = [
        os.environ.get('CLIENT_ORIGIN')
    ]

client_origin_dev = os.environ.get('CLIENT_ORIGIN_DEV', '')
match = re.match(r'^.+-', client_origin_dev, re.IGNORECASE)

if match:
    extracted_url = match.group(0)
else:
    extracted_url = None  # or handle the error accordingly

CORS_ALLOW_CREDENTIALS = True

ROOT_URLCONF = 'drf_api.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'drf_api.wsgi.application'


# Database

# DATABASES = {
#         'default': {
#             'ENGINE': 'django.db.backends.sqlite3',
#             'NAME': BASE_DIR / 'db.sqlite3',
#         }
#     }
# print('connected to sqlite3')

DATABASES = {
        'default': dj_database_url.parse(os.environ.get("DATABASE_URL"))
    }
print(os.environ.get("DATABASE_URL"))
print('connected to live database')


# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

# Enable WhiteNoise to serve static files efficiently
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
