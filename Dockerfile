FROM alpine:3.7
LABEL maintainer="SillyWhale <contact@sillywhale.wtf>"

ENV MKD_ROOT=/mkdocs

RUN \
  apk update && \
  apk upgrade && \
  apk add python py-pip && \
  pip install mkdocs && \
  pip install mkdocs-rtd-dropdown
  
COPY include/init.sh /init.sh
RUN \
  chmod +x /init.sh && \
  rm -rf /var/cache/apk

EXPOSE 8000

ENTRYPOINT ["/init.sh"]