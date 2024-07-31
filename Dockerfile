FROM golang:1.22.5
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY ..
RUN go build -o main .
EXPOSE 7070
CMD ["./main"]
