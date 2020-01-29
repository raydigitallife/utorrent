# docker run -d -p 8080 -p 6881 --name ut-server --restart=always -v /localhost/volume:/ut/share &
# http://YOUR-IP:8080/gui
# admin NO password
# provide settings for my NAS container

FROM ubuntu:16.04
RUN apt-get update;apt-get upgrade -y; apt-get install openssl libssl-dev wget -y
RUN mkdir /ut/share -p
ADD ./utorrent-server /ut

WORKDIR /ut
EXPOSE 8080/tcp 6881/udp 6881/tcp

CMD ["/ut/utserver"]
