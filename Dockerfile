# Dockerfile

# Author       : alimonzer236
# Github       : https://github.com/alimonzer236
# Email        : alimon3er236@gmail.com
# Date         : 02-09-2025
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:latest
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/alimonzer236/PyPhisher"

# Working directory
WORKDIR PyPhisher/
# Add files 
ADD . /PyPhisher

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install php openssh-client -y
RUN pip3 install -r files/requirements.txt
RUN apt-get clean

# Main command
CMD ["python3", "pyphisher.py", "--noupdate"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t alimonzer236/pyphisher:latest", "sudo docker run --rm -it alimonzer236/pyphisher:latest"

## "sudo docker pull alimonzer236/pyphisher", "sudo docker run --rm -it alimonzer236/pyphisher"
