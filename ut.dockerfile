# 2019.09.27
# µTorrent Server for Debian 7.0
# Debian 7.0 - 64-bit (2.15 MB)
# English (US) - September 4, 2019
# docker run -d -p 8080 -p 6881 --name ut-server --restart=always -v /localhost/volume:/ut/share &
# http://YOUR-IP:8080/gui
# admin NO password

FROM ubuntu:16.04
RUN apt-get update;apt-get upgrade -y; apt-get install openssl libssl-dev wget -y
RUN mkdir /ut/share -p
ADD ./utorrent-server /ut
WORKDIR /ut
EXPOSE 8080/tcp 6881/udp 6881/tcp

CMD ["/ut/utserver"]
