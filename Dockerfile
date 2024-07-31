FROM golang:1.22.5
workdir /app
copy go.mod ./
run go mod download
copy ..
run go build -o main .
expose 7070
cmd ["./main"]
