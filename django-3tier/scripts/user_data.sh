#!/bin/bash
apt update -y
apt install -y python3-pip python3-venv git

cd /home/ubuntu
git clone https://github.com/yourusername/your-django-repo.git
cd your-django-repo

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Update settings.py with RDS endpoint via sed or env
python manage.py migrate
nohup python manage.py runserver 0.0.0.0:8000 &