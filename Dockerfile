FROM golang:alpine

RUN apk add --no-cache git

RUN go get -u github.com/alecthomas/gometalinter && \
    gometalinter --install && \
    mv /go/bin/* /usr/local/bin/ && \
    rm -fr /go/pkg /go/*/*
