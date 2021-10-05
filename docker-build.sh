#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=deva786
fi;
docker build --tag=spring-petclinic-admin-server spring-petclinic-admin-server
docker tag spring-petclinic-admin-server $DOCKER_ACCOUNT/spring-petclinic-admin-server:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-admin-server

docker build --tag=spring-petclinic-api-gateway spring-petclinic-api-gateway
docker tag spring-petclinic-api-gateway $DOCKER_ACCOUNT/spring-petclinic-api-gateway:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-api-gateway

docker build --tag=spring-petclinic-config-server spring-petclinic-config-server
docker tag spring-petclinic-config-server $DOCKER_ACCOUNT/spring-petclinic-config-server:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-config-server

docker build --tag=spring-petclinic-customers-service spring-petclinic-customers-service
docker tag spring-petclinic-customers-service $DOCKER_ACCOUNT/spring-petclinic-customers-service:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-customers-service

docker build --tag=spring-petclinic-discovery-server spring-petclinic-discovery-server
docker tag spring-petclinic-discovery-server $DOCKER_ACCOUNT/spring-petclinic-discovery-server:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-discovery-server

docker build --tag=spring-petclinic-vets-service spring-petclinic-vets-service
docker tag spring-petclinic-vets-service $DOCKER_ACCOUNT/spring-petclinic-vets-service:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-vets-service

docker build --tag=spring-petclinic-visits-service spring-petclinic-visits-service
docker tag spring-petclinic-visits-service $DOCKER_ACCOUNT/spring-petclinic-visits-service:latest
docker push $DOCKER_ACCOUNT/spring-petclinic-visits-service