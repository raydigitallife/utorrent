FROM debian:latest

RUN apt-get update ;
apt-get upgrade -y ; apt-get install openssl libssl-dev wget -y
