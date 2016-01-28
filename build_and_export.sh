#!/bin/sh -ex

cd /drafter

./configure
make drafter

cp /drafter/bin/drafter /out

