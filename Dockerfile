# [START - building phase]
FROM debian:bullseye
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

RUN set -e -x; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        openjdk-17-jre \
        pandoc \
        texlive texlive-latex-extra texlive-plain-generic texlive-latex-recommended cm-super \
        python3-yaml python3-jinja2 \
        locales inkscape

# setup su and locale
RUN set -e -x; \
    sed -i '/pam_rootok.so$/aauth sufficient pam_permit.so' /etc/pam.d/su; \
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen; locale-gen
ENV LC_ALL=en_US.UTF-8

ENV APP_HOME=/app
RUN ["mkdir", "${APP_HOME}"]

WORKDIR ${APP_HOME}

COPY . ${APP_HOME}

# RUN ./gradlew tasks cvAll
# [END -   building phase]



# # install debian packages:
# ENV DEBIAN_FRONTEND=noninteractive


# # copy host to docker
# RUN ["mkdir", "${APP_HOME}"]
# WORKDIR ${APP_HOME}

# # COPY build.ninja ${APP_HOME}
# COPY gradlew ${APP_HOME}
# COPY gradle ${APP_HOME}/gradle
# COPY build.gradle.kts ${APP_HOME}
# COPY settings.gradle.kts ${APP_HOME}
# # COPY README.md ${APP_HOME}
# COPY fluz.yml ${APP_HOME}
# # COPY build_cv.sh ${APP_HOME}
# COPY assets ${APP_HOME}/assets
# COPY moderncvclassic ${APP_HOME}/moderncvclassic
# COPY ceevee ${APP_HOME}/ceevee
# COPY markdown ${APP_HOME}/markdown
# COPY tools ${APP_HOME}/tools
# COPY DevResume ${APP_HOME}/DevResume
# COPY pandoc-bootstrap ${APP_HOME}/pandoc-bootstrap
# COPY europasscv ${APP_HOME}/europasscv
