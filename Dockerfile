FROM debian:bullseye
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

# install debian packages:
ENV DEBIAN_FRONTEND=noninteractive
RUN set -e -x; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        pandoc ninja-build \
        texlive texlive-latex-extra cm-super \
        python3-yaml python3-jinja2 \
        locales

# setup su and locale
RUN set -e -x; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; locale-gen
ENV LC_ALL=en_US.UTF-8

# copy host to docker
ENV APP_HOME=/app
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

ADD build.ninja ${APP_HOME}
ADD ceevee ${APP_HOME}/ceevee
ADD markdown ${APP_HOME}/markdown
ADD tools ${APP_HOME}/tools
ADD DevResume ${APP_HOME}/DevResume
ADD assets ${APP_HOME}/assets

COPY build.ninja build.ninja
COPY ./ceevee  dest

CMD ["ninja","-v"]
