FROM python:3.8.1-alpine3.11

RUN apk add --no-cache \
        python2 \
        libevent \
        libpq && \
    apk add --no-cache --virtual .build-deps \
        python2-dev \
        postgresql-dev \
        libevent-dev \
        musl-dev \
        gcc && \
    python -m ensurepip && \
    pip install --upgrade pip && \
    pip install pgcli && \
    apk del .build-deps

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]