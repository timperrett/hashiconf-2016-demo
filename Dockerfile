FROM alpine:3.4

ADD bin/hashiconf-linux-amd64 /usr/local/bin/hashiconf

ENTRYPOINT /usr/local/bin/hashiconf
