#Builder CONTAINER
FROM golang:1.14.4 as builder
ENV CGO_ENABLED 0
#ENV GOOS=linux
#ENV GOARCH=amd64
ENV GO111MODULE=on

#Copy Repo
RUN mkdir -p /service
WORKDIR /service
COPY . .
RUN ls

#Build app
#WORKDIR /service/exampleApp
RUN go build -o ea -mod mod

#===========
#Transfer to executable image
FROM alpine:3.12
COPY --from=builder /service/ /app/

EXPOSE 5000

CMD [ "/app/ea" ]
