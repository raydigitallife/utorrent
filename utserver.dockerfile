FROM ubuntu:latest
RUN apt-get update;apt-get upgrade -y;\
    apt-get install openssl libssl-dev wget -y
RUN wget http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-debian-7-0
RUN tar zxf linux-x64-debian-7-0 ; mv /utorrent-server-alpha-v3_3 /ut ; mkdir /ut/share

WORKDIR /ut
EXPOSE 8080 6881
CMD ["/ut/utserver"]