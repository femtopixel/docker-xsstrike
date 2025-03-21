VERSION ?= 3.1.6
CACHE ?= --no-cache=1

.PHONY: all build publish
all: build publish
build:
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64,linux/arm/v6,linux/386 ${PUSH} --build-arg VERSION=${VERSION} --tag femtopixel/xsstrike --tag femtopixel/xsstrike:${VERSION} ${CACHE} .
publish:
	PUSH=--push CACHE= make build

