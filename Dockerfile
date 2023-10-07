# [START - building phase]
FROM alpine:3.18.4
LABEL maintainer="Fernando Luz <prof.fernando.luz@gmail.com>"

RUN apk update; \ 
    apk upgrade; \
    apk add --no-cache \
        pandoc-cli=0.1.1-r2  \
        bash=5.2.15-r5 \
        openjdk17-jre=17.0.8_p7-r0 \
        texlive=20230506.66984-r0 \
        texmf-dist-latexextra=2023.66587-r1 \
        # Necessary to execute modern CV Classic
        # texmf-dist-fontsextra=2023.66587-r1 \ 
        py3-yaml=6.0-r3 \
        py3-jinja2=3.1.2-r2 \
        inkscape=1.2.2-r7; 

ENV APP_HOME=/app
RUN ["mkdir", "${APP_HOME}"]

WORKDIR ${APP_HOME}

COPY gradle ${APP_HOME}/gradle
COPY gradlew ${APP_HOME}
COPY build.gradle.kts ${APP_HOME}
COPY settings.gradle.kts ${APP_HOME}
COPY README.md ${APP_HOME}
COPY tools ${APP_HOME}/tools
COPY src ${APP_HOME}/src
