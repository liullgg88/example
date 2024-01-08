#!/bin/bash
$1=DOCKER_REGISTRY
$2=VERSION
for i in `ls`
do
if [-d $i];then
  cd /home/jenkins/examples/shenyu-bootstrap/overlays/$i
  /usr/local/bin/kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
fi
done