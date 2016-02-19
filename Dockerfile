#
# Base Debian image for dealing with DEB build tools and repositories
#
FROM base-debian-ceylon:java7

MAINTAINER Tako Schotanus <tako@ceylon-lang.org>

LABEL org.ceylon-lang.dockerfile.description="Base Debian image for dealing with DEB build tools and repositories" \
    org.ceylon-lang.dockerfile.vendor="RedHat" \
    org.ceylon-lang.dockerfile.version="1.0"

USER root

RUN apt-get -y update && apt-get install -y fakeroot debhelper rsync docbook2x sudo reprepro

RUN mkdir /output && chown ceylon:ceylon /output
VOLUME /output

USER ceylon

