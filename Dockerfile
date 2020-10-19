## BASE IMAGE
FROM python:3.9.0-slim-buster AS Builder

## META DATA
LABEL Maintainer="Peter Keech <pkeech@ngds.com>"

## INSTALL UPDATES
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl gnupg2 gcc

## CREATE DOCS FOLDER
CMD mkdir /docs
WORKDIR /docs

## COPY STARTUP SCRIPT
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

## INSTALL REQUIREMENTS
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

## DEFINE ENVIRONMENT VARIABLES
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

## EXPOSE WEB UI
EXPOSE 8000

## RUN IMAGE
ENTRYPOINT ["/docker-entrypoint.sh"]