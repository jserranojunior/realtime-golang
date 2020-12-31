FROM golang:1.14

WORKDIR /go/src/app
COPY ./realtime .

RUN go get -d -v ./...
RUN go install -v ./...

RUN go get github.com/cespare/reflex
ENTRYPOINT ["reflex", "-c", "reflex.conf"]


# FROM golang

# WORKDIR /app

# RUN go get github.com/cespare/reflex
# RUN go get github.com/gin-gonic/gin

# COPY ./realtime .

# ENTRYPOINT [“reflex”, “-c”, “reflex.conf”]
