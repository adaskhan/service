FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt

RUN pip install -r  /temp/requirements.txt

WORKDIR /service

COPY service  /service

RUN adduser --disabled-password service-user

USER service-user

EXPOSE 8000