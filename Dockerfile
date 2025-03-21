FROM python:alpine

ARG VERSION=3.1.6
ARG TARGETPLATFORM
LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com>"
LABEL version=${VERSION}-${TARGETPLATFORM}
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
