# [START - building phase]
FROM debian:bullseye
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

RUN set -e -x; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        openjdk-17-jre \
        pandoc=2.9.2.1-1 ninja-build=1.10.1-1 \
        texlive=2020.20210202-3 texlive-latex-extra=2020.20210202-3 texlive-plain-generic=2020.20210202-3 texlive-latex-recommended=2020.20210202-3 cm-super=0.3.4-15 \
        python3-yaml=5.3.1-5 python3-jinja2=2.11.3-1 \
        locales=2.31-13+deb11u6 inkscape=1.0.2-4; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/*

# setup su and locale
RUN set -e -x; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; locale-gen
ENV LC_ALL=en_US.UTF-8

ENV APP_HOME=/app
RUN ["mkdir", "${APP_HOME}"]

WORKDIR ${APP_HOME}

COPY src ${APP_HOME}
COPY tools ${APP_HOME}
# COPY README.md ${APP_HOME}
