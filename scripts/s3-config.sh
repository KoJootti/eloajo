#!/bin/bash

aws --region eu-north-1 s3 website s3://www.eloajo.fi/ --index-document index.html --error-document "404.html"
