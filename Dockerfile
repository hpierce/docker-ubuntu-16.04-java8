#
# Dockerfile
#
#
FROM hpierce/docker-ubuntu-16.04-base

# Environment
ENV DEBIAN_FRONTEND noninteractive

# java 7 install
RUN add-apt-repository ppa:webupd8team/java -y && apt-get update && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | \
    debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true | \
    debconf-set-selections && apt-get install oracle-java8-installer -y 

