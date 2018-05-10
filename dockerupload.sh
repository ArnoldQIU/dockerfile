#!/bin/bash
for i in `seq 1 7`
do
	pushd node$i >/home/b10409022/null
	docker build -t arrnoldc/7node:node$i .
	popd >/home/b10409022/null
done

for i in `seq 1 7`
do
	docker push arrnoldc/7node:node$i 
done
