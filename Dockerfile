RUN set -xe; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        gnome-screenshot \
        curl \
        git \
        gh \
        samba-client \
        cifs-utils \
        wget \
        imagemagick \
        ffmpeg \
        sudo \
        gnupg \
    ; \
    apt-get autoremove -y; \
    apt-get autoclean -y; \
    apt-get clean -y; \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*; \
    rm -rf /tmp/* /var/tmp/*; rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*;
