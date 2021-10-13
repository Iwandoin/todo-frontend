#!/bin/sh
set -e
set +x
cd frontend/build
aws s3 sync . s3://vyadro2 --acl public-read
