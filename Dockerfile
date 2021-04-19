FROM hub.furycloud.io/mercadolibre/go:1.14-mini

#Defines you application repository
ENV APPLICATION_PACKAGE=./urlshortener

ENV IGNORE_GO_GET=true
ENV GO_TEST_FLAGS="-p 1 -gcflags=-l"

#Enable metrics
ENV DATACENTER=AWS

RUN apt-get update && apt-get -y install tzdata
