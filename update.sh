#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

set -e

rm -rf ${cwd}/dest

root_path='https://raw.githubusercontent.com/docker-library/golang'
version='1.8'

mkdir ${cwd}/dest

curl -L -o ${cwd}/dest/Dockerfile \
  ${root_path}/master/${version}/Dockerfile

curl -L -o ${cwd}/dest/go-wrapper \
  ${root_path}/master/${version}/go-wrapper

sed -ie 's/buildpack-deps:jessie-scm/mooxe\/base/g' \
  ${cwd}/dest/Dockerfile

rm -rf ${cwd}/dest/Dockerfilee
