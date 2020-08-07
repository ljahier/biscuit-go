FROM golang:1.14-buster

ADD go.mod go.sum /app/
RUN cd /app && go mod download

ADD . /app

WORKDIR /app
CMD ["/app/script/test.sh"]

