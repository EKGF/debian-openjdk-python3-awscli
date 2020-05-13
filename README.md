# Base Image - debian-openjdk-python3-awscli

debian-openjdk-python3-awscli is a base image that has openjdk java, bash, python 3 and the AWS CLI on board (for S3 access).

We switched from Alpine to Debian for this image due to these two articles:
- https://pythonspeed.com/articles/base-image-python-docker-images/
- https://pythonspeed.com/articles/alpine-docker-python/

Unfortunately we have to combine Java and Python in one base image.
This image is needed for containers that run a JVM process and also
use the AWS CLI from Bash scripts.

Utilities in this image:

- jq (for processing JSON)
- curl & wget (for executing HTTP commands)
- git
- rsync

Python libraries:

- awscli
- rdflib
- pystardog
- requests
- boto3
