FROM quay.io/refgenomics/docker-ubuntu:14.04
MAINTAINER Nick Greenfield <nick@onecodex.com>

# Install make and gcc and standard build libraries
RUN apt-get install -y build-essential
RUN apt-get install -y gcc
RUN apt-get install -y python python-dev python-pip
RUN apt-get install -y python-numpy ipython
RUN apt-get install -y pandoc

# Pip requirements
ADD requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

# Tex?
# RUN apt-get install -y texlive

# Integration tests
ADD test /tmp/test
RUN bats /tmp/test
