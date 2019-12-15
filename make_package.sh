#!/bin/bash
docker run --rm -v $(pwd):/mydir -w /mydir \
    lambci/lambda:build-python3.6 \
    pip install -r requirements.txt -t python

cp lambda_function.py python/
cd python/ 
zip -r src.zip .
mv src.zip ../
cd ..
rm -rf python