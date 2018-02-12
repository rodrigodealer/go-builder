FROM golang:1.8

ENV APP_PATH /go/src/github.com/user/app
ENV APP_BIN app
ENV GOOS linux

RUN apt-get update && apt-get install -y \
    xz-utils \
&& rm -rf /var/lib/apt/lists/*


ADD https://github.com/upx/upx/releases/download/v3.94/upx-3.94-amd64_linux.tar.xz /usr/local
RUN xz -d -c /usr/local/upx-3.94-amd64_linux.tar.xz | \
    tar -xOf - upx-3.94-amd64_linux/upx > /bin/upx && \
    chmod a+x /bin/upx

COPY build.sh /

CMD ["sh", "/build.sh"]
