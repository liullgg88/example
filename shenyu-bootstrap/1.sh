#!/bin/bash
for i in `ls`
do 
cd /home/jenkins/examples/${APP_DIR}/overlays/${i}
/usr/local/bin/kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
done