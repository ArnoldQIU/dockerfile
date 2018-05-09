FROM ubuntu:16.04
MAINTAINER Mark Peng

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install vim git software-properties-common wget  -y 
ADD run.sh /run.sh
RUN ["/bin/bash","-c","./run.sh"] 
RUN git clone https://github.com/markpengisme/k8s_project.git \
	&& cp -r k8s_project/7nodes/node7 /home/node7 \
	&& rm -rf k8s_project/ \
	&& rm ./run.sh
