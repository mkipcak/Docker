NAME   := nordri/nordri-dev-tools
TAG    := $$(git log -1 --pretty=%!h(MISSING))
IMG    := ${NAME}:${TAG}
LATEST := ${NAME}:latest

build:
	@docker build -t ${IMG} .
	@docker tag ${IMG} ${LATEST}

push:
	@docker push ${NAME}

login:
	@docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASS}

