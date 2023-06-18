#!/bin/bash

aws --region eu-north-1 s3 website s3://www.eloajo.fi/ --index-document index.html --error-document "404.html"
aws --region eu-north-1 s3api put-bucket-policy --bucket www.eloajo.fi --policy file://scripts/bucket-policy.json
