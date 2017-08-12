FROM golang:1.8

ENV APP_PATH=/go/src/github.com/app
ENV GOOS=linux

WORKDIR $APP_PATH

CMD ["go", "build", "-o", "app"]
