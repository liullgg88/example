#!/bin/bash
DOCKER_REGISTRY=$1
VERSION=$2
for i in `ls`
do
if [ -d  $i ];then
   echo $i
   cd /home/jenkins/examples/shenyu-bootstrap/overlays/$i
   /usr/local/bin/kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
fi
done