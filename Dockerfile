# Based on https://github.com/hypriot/rpi-python/blob/master/Dockerfile
# Pull base image
FROM resin/rpi-raspbian:wheezy
MAINTAINER Matthieu Totet <matthieu.totet@gmail.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip
# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
