#!/bin/sh -ex

RELEASE=${RELEASE-v2.1.2}

git clone https://github.com/apiaryio/drafter /drafter

cd /drafter
git checkout ${RELEASE}
git submodule update --recursive --init

./configure
make drafter

cp /drafter/bin/drafter /out
