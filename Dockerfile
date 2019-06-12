FROM python:alpine as builder

COPY qemu-*-static /usr/bin/

FROM builder

ARG VERSION=3.1.4
ARG VERSION_LABEL=3.1.4
LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com> <https://twitter.com/MoulinJay>"
LABEL version=${VERSION_LABEL}
#Use alpine to save disk space
RUN apk add --no-cache git bash &&\
    git clone https://github.com/s0md3v/XSStrike.git &&\
    cd ./XSStrike &&\
    git checkout ${VERSION} &&\
    pip install -U pip &&\
    pip install -r requirements.txt &&\
    apk del --purge git
WORKDIR /XSStrike/
ENTRYPOINT ["python","xsstrike.py"]
