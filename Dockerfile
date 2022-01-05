FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
RUN cd app
WORKDIR /app
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 80
