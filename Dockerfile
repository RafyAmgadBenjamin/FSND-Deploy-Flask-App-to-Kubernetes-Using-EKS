FROM python:3.7.6-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install -r /app/requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

