#!/bin/bash
DOCKER_REGISTRY=$1
VERSION=$2
for i in `ls`
do
  if [ -d  $i ];then
     cd /home/jenkins/examples/shenyu-bootstrap/overlays/$i
     #/usr/local/bin/kustomize edit set image ${DOCKER_REGISTRY}:${VERSION}
     cat kustomization.yaml
  fi
done
