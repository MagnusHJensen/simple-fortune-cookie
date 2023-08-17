FROM golang:1.20 as builder
WORKDIR /usr/src/app
COPY go.mod ./
RUN go mod download && go mod verify
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
FROM debian as app
COPY --from=builder /usr/src/app/ ./app
EXPOSE 8080 
ENTRYPOINT ["./app/frontend"] 
