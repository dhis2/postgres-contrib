FROM postgres:11.8

RUN apt-get update && apt-get install -y postgresql-contrib

COPY extensions/* /docker-entrypoint-initdb.d/

RUN chmod 755 /docker-entrypoint-initdb.d/*
