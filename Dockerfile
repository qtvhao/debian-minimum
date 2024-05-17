FROM ghcr.io/qtvhao/debian:main

WORKDIR /app/

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        curl \
        wget \
        sudo \
        gnupg \
        lsb-release \
        procps \
        dbus \
        upower \
        unzip \
        socat \
        locales \
        ca-certificates \
    ; \
    apt-get autoremove -y; \
    apt-get autoclean -y; \
    apt-get clean -y; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*; \
    rm -rf /tmp/* /var/tmp/*; rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*;

RUN wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh && \
    chmod +x wait-for-it.sh
