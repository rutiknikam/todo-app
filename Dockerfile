FROM python:3.10

WORKDIR /app

RUN pip install --no-cache-dir Django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

