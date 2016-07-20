FROM golang:1.6-alpine

COPY . /go/src/github.com/cyverse-de/configurate

RUN apk update && apk add git

RUN go get github.com/olebedev/config

CMD ["go", "test", "github.com/cyverse-de/configurate"]
