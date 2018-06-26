#!/bin/sh

MKD_PORT=${MKD_PORT:-'8000'}
MKD_LISTEN_ADDR=${MKD_LISTEN_ADDR:-'0.0.0.0'}

cd ${MKD_ROOT}
CFG_EXIST=$(find ./ -type f -name "mkdocs.yml")
if [ -z ${CFG_EXIST} ]
then
    mkdocs new project
    mv project/* .
    rmdir project
fi
/usr/bin/mkdocs serve --dev-addr ${MKD_LISTEN_ADDR}:${MKD_PORT}