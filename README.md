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
- yq (for processing YAML)
- curl & wget (for executing HTTP commands)
- git
- rsync
- awscli
- uuid-dev
- dirmngr
- gnupg
- less
- groff
- ca-certificates
- netbase
- unzip
- krb5-user
- krb5-config
- libgssapi-krb5-2 

Python libraries:

- wheel
- rdflib
- sparqlwrapper
- requests
- boto3
- pystardog
- owlrt
- pandas
- stringcase
- unidecode
- humps
- xlrd
- ldap3
- gssapi


