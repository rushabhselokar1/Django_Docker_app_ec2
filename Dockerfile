FROM python:3.11-bookworm

ENV PYTHONBUFFERED=1

WORKDIR /django

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . . 

CMD python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000