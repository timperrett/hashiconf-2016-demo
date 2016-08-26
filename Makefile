VERSION=1.0.0
BUILD_TIME=`date +%FT%T%z`

compile:
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 gb build -ldflags "-X main.BuildTime=${BUILD_TIME} -X main.Version=${VERSION}"

docker: compile
	docker build -t timperrett/hashiconf-2016-demo . && \
	docker push timperrett/hashiconf-2016-demo
