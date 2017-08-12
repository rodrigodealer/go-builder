FROM golang:1.8

ENV APP_PATH /go/src/github.com/user/app
ENV APP_BIN app
ENV GOOS linux

COPY build.sh /

CMD ["sh", "/build.sh"]
