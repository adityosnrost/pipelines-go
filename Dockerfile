FROM golang:latest 
RUN mkdir /app 
RUN cd /app
WORKDIR /app
ADD . /app/ 
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 80
