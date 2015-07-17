REGISTRY=chuej
NAME=mini-openresty
TAG=latest

build: Dockerfile
	docker build -t ${NAME} .

tag: build
	docker tag -f ${NAME} ${REGISTRY}/${NAME}:${TAG}

publish: tag
	docker push ${REGISTRY}/${NAME}:${TAG}
