FROM golang:1.20 as builder

WORKDIR /app

COPY . /app

RUN ls

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build 

FROM scratch as myapp
COPY --from=builder /app/backend /myapp

CMD [ "/myapp" ]