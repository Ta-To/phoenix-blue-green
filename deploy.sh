#!/bin/bash
# e.g.
# deploy.sh service/service-0.1.0+d853862.tar.gz alpha
# - 引数1のファイル(tarボール)をalpha/betaのいずれかにデプロイする

RELEASEFILE=$1
RELEASETARGET=$2

rm -rf ${RELEASETARGET}/*
tar zxf ${RELEASEFILE} -C ${RELEASETARGET}/
docker-compose restart $RELEASETARGET
