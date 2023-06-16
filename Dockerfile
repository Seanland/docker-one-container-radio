FROM ubuntu:kinetic
LABEL maintainer "me@seanland.ca"

RUN apt-get -y update; \
  apt-get -y upgrade; \
  apt-get install -y ices2 icecast2 sudo; \
  apt-get clean;

COPY ./ices.xml /ices.xml
COPY ./start-icecast.sh /start-icecast.sh
COPY ./start-ices.sh /start-ices.sh

ADD ./etc /etc

EXPOSE 8000

VOLUME ["/config"]

CMD ["/start-icecast.sh"]
