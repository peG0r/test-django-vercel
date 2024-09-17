#!/bin/bash

# Build the project
echo "Building the project"

python3.9 -m pip install -r requeriments.txt

echo "Make migrations..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect Statistics..."
python3.9  manage.py collectstatic --noinput --clear