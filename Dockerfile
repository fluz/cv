FROM debian:bullseye
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

# install debian packages:
ENV DEBIAN_FRONTEND=noninteractive
RUN set -e -x; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        pandoc ninja-build \
        texlive texlive-latex-extra texlive-plain-generic texlive-latex-recommended cm-super \
        python3-yaml python3-jinja2 \
        locales inkscape

# setup su and locale
RUN set -e -x; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; locale-gen
ENV LC_ALL=en_US.UTF-8

# copy host to docker
ENV APP_HOME=/app
RUN ["mkdir", "${APP_HOME}"]
WORKDIR ${APP_HOME}

COPY build.ninja ${APP_HOME}
COPY README.md ${APP_HOME}
COPY fluz.yml ${APP_HOME}
COPY build_cv.sh ${APP_HOME}
COPY assets ${APP_HOME}/build/assets
COPY moderncvclassic ${APP_HOME}/moderncvclassic
COPY ceevee ${APP_HOME}/ceevee
COPY markdown ${APP_HOME}/markdown
COPY tools ${APP_HOME}/tools
COPY DevResume ${APP_HOME}/DevResume
COPY pandoc-bootstrap ${APP_HOME}/pandoc-bootstrap
COPY europasscv ${APP_HOME}/europasscv

RUN ["ninja","-v"]
# RUN ["./build_cv.sh"]
RUN ["cp", "${APP_HOME}/build/DevResume/index.html","${APP_HOME}/build/index.html"]
RUN ["sed","-i", "'s|\.\./|\./|g'", "./build/index.html"]
RUN ["ls", "-l", "${APP_HOME}/build"]
