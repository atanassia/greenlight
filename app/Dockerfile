FROM golang:1.20rc1-alpine3.17
RUN apk update && apk add make

WORKDIR /usr/src/app
EXPOSE 4000

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
# RUN make swagger

# RUN go build -debug -o main ./cmd/web 
# CMD ["/usr/src/app/main"]

CMD ["go", "run", "./cmd/api"]