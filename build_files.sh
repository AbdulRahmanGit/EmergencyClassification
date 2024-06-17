#!/bin/bash

# Create and activate virtual environment
python3.12 -m venv myenv
source myenv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Collect static files
python3.12 manage.py collectstatic --noinput

# Make migrations
python3.12 manage.py makemigrations

# Apply migrations
python3.12 manage.py migrate

python3.12 manage.py runserver
# Deactivate virtual environment (optional)
deactivate
