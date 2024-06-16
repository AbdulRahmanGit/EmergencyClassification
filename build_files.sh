#!/bin/bash
echo "Python version:"
python3 --version
echo "Pip version:"
pip3 --version
pip3 install -r requirements.txt
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
