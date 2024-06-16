#!/bin/bash

# Install Python dependencies from requirements.txt
pip install -r requirements.txt

# Collect static files for deployment
python3.12 manage.py collectstatic --noinput

# Create database migrations based on changes in models
python3.12 manage.py makemigrations

# Apply database migrations to the database
python3.12 manage.py migrate
