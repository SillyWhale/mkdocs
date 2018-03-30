FROM alpine:3.7
MAINTAINER Vincent FRICOU <vincent@fricouv.eu>

ENV MKD_ROOT=/mkdocs

RUN \
  apk update && apk upgrade && apk add python py-pip && pip install mkdocs
  
COPY include/init.sh /init.sh
RUN \
  chmod +x /init.sh

EXPOSE 8000

ENTRYPOINT ["/init.sh"]




