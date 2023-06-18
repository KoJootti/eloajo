#!/bin/sh


echo "Generating site"
git submodule update --init --recursive --depth=1
make build


aws --region eu-north-1 s3 sync public/ s3://www.eloajo.fi/ --delete
aws --region eu-north-1 s3 website s3://www.eloajo.fi/ --index-document index.html --error-document "404.html"
aws --region eu-north-1 s3api put-bucket-policy --bucket www.eloajo.fi --policy file://scripts/bucket-policy.json
