FROM golang:1.13.8-alpine3.10

RUN apk add --no-cache git

RUN apk add tzdata
RUN ls /usr/share/zoneinfo

RUN cp /usr/share/zoneinfo/Europe/Istanbul /etc/localtime
RUN echo "Europe/Istanbul" >  /etc/timezone
RUN apk del tzdata

RUN go get -v git.mulk.net/keskinbu/changelog-generator
RUN go build -o /go/src/git.mulk.net/keskinbu/changelog-generator/bin/changelog git.mulk.net/keskinbu/changelog-generator

#WORKDIR /go/src/git.mulk.net/keskinbu/changelog-generator
WORKDIR /var/www/bus
