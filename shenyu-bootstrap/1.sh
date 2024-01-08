#!/bin/bash
for i in `ls`
do 
cd ${i}
cd ..
#/usr/local/bin/kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
done