FROM golang:1.23 as builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go .

RUN CGO_ENABLED=0 GOOS=linux go build -o /k3sdemoapp

FROM golang:1.23-alpine

WORKDIR /app

COPY --from=builder /k3sdemoapp .

EXPOSE 8080

CMD ["/app/k3sdemoapp"]