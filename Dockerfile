FROM alpine:3.13

WORKDIR /usr/src/app

COPY hello.sh/ .

CMD ./hello.sh

RUN chmod -R 777 ./hello.sh
