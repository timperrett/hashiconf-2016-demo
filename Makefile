VERSION=1.0.${TRAVIS_BUILD_NUMBER}
BUILD_TIME=`date +%FT%T%z`
IMAGE_TAG=timperrett/hashiconf-2016-demo-1.0:${VERSION}

all: docker nelson

# compile for linux, but this binary is going to immedietly be stuffed
# into an alpine linux image. if someone wants to build this thing for
# themselves, then they can simply do: `gb build`
compile:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 gb build -ldflags "-X main.BuildTime=${BUILD_TIME} -X main.Version=${VERSION}"

# like zomg, docker... so hot right now!
docker: compile
	docker build -t ${IMAGE_TAG} . && docker push ${IMAGE_TAG}

# naturally, we have fully automated tooling for all this internally.
# but for the sake of demonstration purposes, simply generating the
# right file is good enough.
nelson:
	sed s/__VERSION__/${VERSION}/g hashiconf.deployable.template > hashiconf.deployable.yml
