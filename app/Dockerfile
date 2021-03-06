FROM python:3.8-alpine

ENV APP_ROOT /src
ENV CONFIG_ROOT /config

RUN mkdir ${CONFIG_ROOT}
COPY requirements.txt ${CONFIG_ROOT}/requirements.txt

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev openssl-dev python3-dev cargo\
    && apk add libxml2-dev libxslt-dev \
    && apk add --no-cache mariadb-dev \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r ${CONFIG_ROOT}/requirements.txt \
    && apk del .build-deps

RUN mkdir ${APP_ROOT}
WORKDIR ${APP_ROOT}

ADD . ${APP_ROOT}

COPY ./djangoq_setup.sh /djangoq_setup.sh
RUN chmod +x /djangoq_setup.sh

RUN adduser appUser -D -h ${APP_ROOT} -s /bin/sh \
    && chown -R appUser ${APP_ROOT}
USER appUser

CMD ["python", "manage.py", "collectstatic"]