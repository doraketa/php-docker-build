SHELL=/bin/bash
UID=$(shell id -u)

include .env

help:
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2 | "sort" }' $(MAKEFILE_LIST)

privilege: ## add USER to docker group. After run "exec su -l $USER"
	@sudo gpasswd -a ${USER} docker

to-php: ## go to php container
	@docker exec -it ${PHP_CONTAINER_NAME} bash

build: ## run containers
	@docker-compose -p ${PROJECT_NAME} build

run: ## run containers
	@docker-compose -p ${PROJECT_NAME} up -d

stop: ## stop containers
	@docker-compose -p ${PROJECT_NAME} stop
