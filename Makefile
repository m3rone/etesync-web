#!make
include .env

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

publish: build
	docker login ghcr.io
	docker push $(DOCKER_IMAGE_NAME)
