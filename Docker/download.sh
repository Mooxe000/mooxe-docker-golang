#!/usr/bin/env bash

: ${GOLANG_VERSION:="1.11.2"}
: ${GOLANG_DOWNLOAD_URL:="https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"}
: ${GOLANG_DOWNLOAD_SHA256:="1dfe664fa3d8ad714bbd15a36627992effd150ddabd7523931f077b3926d736d"}

# curl -SfL -o "./download/golang.tar.gz" "${GOLANG_DOWNLOAD_URL}"
bash -lc 'axel "${GOLANG_DOWNLOAD_URL}"'
# echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c -
echo "$GOLANG_DOWNLOAD_SHA256  ./Docker/download/golang.tar.gz" | shasum -a 256 -c
