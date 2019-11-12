FROM ubuntu:18.04

RUN apt update 
RUN apt install -y wget curl telnet  inetutils-ping 

#eosio 
#RUN wget https://github.com/eosio/eos/releases/download/v1.8.1/eosio_1.8.1-1-ubuntu-18.04_amd64.deb
COPY ./apt-source-list  /etc/apt/sources.list.d/
COPY ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb .
RUN apt install -y ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb
RUN rm ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb

RUN mkdir /contracts
COPY contracts  /contracts/

RUN mkdir -p /eos/nodeos/data-dir /eos/nodeos/contracts /eos/nodeos/config
RUN mkdir /eos/scripts/ -p
COPY scripts /eos/scripts/

COPY nodeos-config /eos/nodeos/config/

RUN mkdir /eos/keosd/config -p
RUN mkdir /eos/keosd/data-dir


