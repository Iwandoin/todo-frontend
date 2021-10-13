#!/bin/sh
set -e
set +x
cd frontend/build
aws s3 sync . arn:aws:s3:::vyadro2 --acl public-read
