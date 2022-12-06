FROM ubuntu:20.04

# update and install libraries
ARG DEBIAN_FRONTEND=noninteractive
ARG TZ=Etc/UTC
RUN apt-get update
RUN apt-get install -y build-essential libssl-dev libsqlite3-dev valgrind screen
RUN apt-get install -y openssl
RUN apt-get install -y python3
WORKDIR /mnt
ENTRYPOINT ["/bin/bash"]
