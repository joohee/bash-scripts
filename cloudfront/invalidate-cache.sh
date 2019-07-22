#!/bin/bash 

# you have to write your valid access key and secret access key of AWS.
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

# cf. sync vs mv vs cp 
aws s3 sync . s3://YOUR_BUCKET_NAME/ 

# you can add files or directories to invalidate cache of cloudfront. 
aws cloudfront create-invalidation --distribution-id YOUR_CLOUDFRONT_DIST_ID --paths /index.html /main.js /static/* /images/* /css/* 

