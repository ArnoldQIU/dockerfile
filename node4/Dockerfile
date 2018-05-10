FROM ubuntu:16.04
MAINTAINER Luo Qiu

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install vim git software-properties-common wget  -y 
ADD run.sh /run.sh
RUN ["/bin/bash","-c","./run.sh"] 
RUN git clone https://github.com/ArnoldQIU/dockerfile.git \
	&& cp -r dockerfile/7nodes/node4 /home/node4 \
	&& rm -rf dockerfile/ \
	&& rm ./run.sh
