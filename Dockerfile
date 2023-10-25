FROM golang:latest

ENV APP_NAME fullcycle
ENV PORT 8090

COPY . /go/app/${APP_NAME}

WORKDIR /go/app/${APP_NAME}

RUN go get ./
RUN go build -o ${APP_NAME}

CMD ["./app"]

EXPOSE ${PORT}
