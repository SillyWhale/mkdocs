#!/bin/sh

cd ${MKD_ROOT}
CFG_EXIST=$(find ./ -type f -name "mkdocs.yml")
if [ -z ${CFG_EXIST} ]
then
    mkdocs new project
    mv project/* .
    rmdir project
fi
/usr/bin/mkdocs serve --dev-addr 0.0.0.0:8000