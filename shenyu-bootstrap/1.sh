#!/bin/bash
for i in `ls`
do 
cd /home/jenkins/examples/shenyu-bootstrap/overlays/${i}
kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
done