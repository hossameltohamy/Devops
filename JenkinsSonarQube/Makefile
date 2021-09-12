THIS_FILE := $(lastword $(MAKEFILE_LIST))
DOCKER_CONTAINER_LIST := $(shell docker ps -a -q)
.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell

DOCKER_COMPOSE_FILE:=docker-compose.yml
 

help:
		make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
jenkins-pass:
		docker-compose  exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
build:
		docker-compose -f ${DOCKER_COMPOSE_FILE} up -d $(c)

down:
		docker-compose -f ${DOCKER_COMPOSE_FILE} down $(c)


destroy:
		docker-compose -f  ${DOCKER_COMPOSE_FILE} down -v $(c)

stop:
		docker-compose -f ${DOCKER_COMPOSE_FILE} stop $(c)

logs:
		docker-compose  -f ${DOCKER_COMPOSE_FILE} logs --tail=100 -f $(c)
login-jenkins:
		docker-compose -f  ${DOCKER_COMPOSE_FILE} exec jenkins /bin/bash




