for i in `seq 1 7`
do
	pushd node$i >/dev/null
	docker build -t arrnoldc/7node:node$i .
	popd >/dev/null
done

for i in `seq 1 7`
do
	docker push arrnoldc/7node:node$i 
done
