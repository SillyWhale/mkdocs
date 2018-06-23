# Supported tags and respective `Dockerfile` links

- [`latest` (*latest/Dockerfile*)](https://github.com/SillyWhale/mkdocs/blob/master/Dockerfile)

# Quick reference

- **Where to file issues**:  
  [https://github.com/SillyWhale/mkdocs/issues](https://github.com/SillyWhale/mkdocs/issues)

- **Maintained by**:  
  [SillyWhale](https://github.com/SillyWhale/mkdocs)

- **Source of this description**:  
  [docs repo's directory](https://github.com/SillyWhale/sw_images-doc)

- **Supported Docker versions**:  
  [the latest release](https://github.com/docker/docker-ce/releases/latest)

# What is <project app> ?

[MKDocs](https://www.mkdocs.org/) MkDocs is a fast, simple and downright gorgeous static site generator that's geared towards building project documentation. Documentation source files are written in Markdown, and configured with a single YAML configuration file..  

# How to use this image

## Usage

Use like you would any other base image:

```dockerfile
FROM alpine:3.7
LABEL maintainer="Vincent FRICOU <vincent@fricouv.eu>"

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
```

This yields us a virtual image size of about 70MB image.

## Documentation

This image is well documented. [Check out the documentation on our website](http://docs.sillywhale.com/mkdocs/).

# License

View [license information](https://www.mkdocs.org) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.