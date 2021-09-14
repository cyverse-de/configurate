FROM golang:1.16-alpine

RUN apk update && apk add git

RUN go get github.com/jstemmer/go-junit-report

COPY . /go/src/github.com/cyverse-de/configurate

WORKDIR /go/src/github.com/cyverse-de/configurate

ENV CGO_ENABLED=0

CMD go test -v github.com/cyverse-de/configurate | tee /dev/stderr | go-junit-report
