# docker run -d -p 8080 -p 6881 --name ut-server --restart=always -v /localhost/volume:/ut/share &
# http://YOUR-IP:8080/gui
# login as admin and "NO" password
# the ut-server settings for my NAS container

# 基底映像檔不需最新的, 有些 library 會不支援
FROM ubuntu:16.04
RUN apt-get update; apt-get upgrade -y
RUN apt-get install openssl libssl-dev wget locales -y

# 下載檔案的編碼問題解決
RUN locale-gen zh_TW.utf8
ENV LC_ALL zh_TW.utf8

# utorrent-server
RUN mkdir /ut/share -p
ADD ./utorrent-server /ut
WORKDIR /ut

EXPOSE 8080/tcp 6881/udp 6881/tcp
CMD ["/ut/utserver"]
