PREFIX ?= mlo

help:
	@grep -E '^[0-9a-zA-Z._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help

build: ## Build all Dockerfiles
build: aws-sam golang1.13 golang1.14
.PHONY: build

aws-sam: ## AWS SAM CLI
	docker build -t $(PREFIX)/aws-sam aws-sam-cli
.PHONY: aws-sam

golang1.13: ## Go 1.13 (with Make and mockery)
	docker build -t $(PREFIX)/golang:1.13 --build-arg GO_VERSION=1.13 golang
.PHONY: golang1.13

golang1.14: ## Go 1.14 (with Make and mockery)
	docker build -t $(PREFIX)/golang:1.14 --build-arg GO_VERSION=1.14 golang
.PHONY: golang1.14

php7.2: ## PHP 7.2 (with Composer and Symfony Flex)
	docker build -t $(PREFIX)/php:7.2 --build-arg PHP_VERSION=7.2 php
.PHONY: php7.2

php7.3: ## PHP 7.3 (with Composer and Symfony Flex)
	docker build -t $(PREFIX)/php:7.3 --build-arg PHP_VERSION=7.3 php
.PHONY: php7.3

php7.4: ## PHP 7.4 (with Composer and Symfony Flex)
	docker build -t $(PREFIX)/php:7.4 --build-arg PHP_VERSION=7.4 php
.PHONY: php7.4
