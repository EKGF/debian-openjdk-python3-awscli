# Base Image - debian-openjdk-python3-awscli

debian-openjdk-python3-awscli is a base image that has openjdk java, bash, python 3 and the AWS CLI on board (for S3 access).

We switched from Alpine to Debian for this image due to these two articles:
- https://pythonspeed.com/articles/base-image-python-docker-images/
- https://pythonspeed.com/articles/alpine-docker-python/

Unfortunately we have to combine Java and Python in one base image.
This image is needed for containers that run a JVM process and also
use the AWS CLI from Bash scripts.

## Build

### Build in Google Cloud

Log in to Google Cloud first using the command: `gcloud auth login`.

Then use the `build.sh` script to build it.
This script will build the image in Google Cloud and publish
it under the names:

 - `gcr.io/lgt-ekg/debian-openjdk-python3-awscli:0.3.2`
 - `gcr.io/lgt-ekg/debian-openjdk-python3-awscli:latest`

### Build on Mac OS X

TODO

### Build on OpenShift

TODO
