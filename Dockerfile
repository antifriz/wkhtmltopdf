FROM ubuntu:16.04
RUN apt-get update && apt-get install -qy --no-install-recommends \
        xvfb \
        libfontconfig \
        ca-certificates \
        libfontconfig \
        libfontconfig \
        ca-certificates \
        fontconfig \
        libjpeg-turbo8 \
        libpng12-0 \
        libssl1.0.0 \
        libxrender1 \
        xfonts-75dpi \
        xfonts-base \
        wget \
    && \
    wget --quiet https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb -O package.deb && \
    apt install $PWD/package.deb && \
    rm -rf package.deb && \
    rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["wkhtmltopdf"]

