VERSION ?= 3.1.4
CACHE ?= --no-cache=1
FULLVERSION ?= ${VERSION}
archs ?= arm32v7 amd64 i386 arm64v8 arm32v6

.PHONY: docker build publish latest
docker: build publish latest
build:
	cp -r /usr/bin/qemu-*-static .
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM python:alpine/FROM ${arch}\/python:alpine/g" > .Dockerfile; \
		docker build -t femtopixel/xsstrike:${VERSION}-$(arch) --build-arg VERSION=${VERSION} --build-arg VERSION_LABEL=${VERSION}-$(arch) -f .Dockerfile ${CACHE} .;\
	)
publish:
	docker push femtopixel/xsstrike
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest: build
	FULLVERSION=latest VERSION=${VERSION} make publish
