from os import environ as env
import os
#import multiprocessing

PORT = int(env.get("PORT", 8000))
DEBUG_MODE = int(env.get("DEBUG_MODE", 1))

# AWS Info
AWS_BUCKET = os.environ.get('AWS_BUCKET')
AWS_S3_KEY = os.environ.get('S3_ACCESS_KEY')
AWS_S3_SECRET = os.environ.get('S3_SECRET_ACCESS_KEY')

# Database Info
DB_HOST_NAME = os.environ.get('DB_HOST_NAME')
DB_USER = os.environ.get('DB_USER')
DB_PASSWORD = os.environ.get('DB_PASSWORD')
DB_NAME = os.environ.get('DB_NAME')
DB_PORT = os.environ.get('DB_PORT')

# Gunicorn config
bind = ":" + str(PORT)
#workers = multiprocessing.cpu_count() * 2 + 1
#threads = 2 * multiprocessing.cpu_count()