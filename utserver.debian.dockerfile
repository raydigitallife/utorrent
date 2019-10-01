FROM ubuntu:latest

RUN apt-get update ; apt-get upgrade -y ; apt-get install openssl libssl-dev wget tzdata locales -y
RUN mkdir -p /ut/server

ADD ./utserver.tar.gz /ut/
RUN tar zxf /ut/utserver.tar.gz

RUN mv /ut/utorrent-server-alpha-v3_3/ /ut/utserver/


WORKDIR /ut

EXPOSE 8080/tcp 6881/tcp 6881/udp

CMD ["/ut/utserver/utserver"]
