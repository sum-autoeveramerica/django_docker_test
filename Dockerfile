
FROM python:3.10.9-alpine as builder

WORKDIR /usr/src/app

# install psycopg2 dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip
RUN pip install gunicorn uvicorn

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000