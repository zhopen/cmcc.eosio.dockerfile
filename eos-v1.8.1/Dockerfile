FROM ubuntu:18.04

RUN apt update 
#RUN apt install -y wget curl 

#eosio 
#RUN wget https://github.com/eosio/eos/releases/download/v1.8.1/eosio_1.8.1-1-ubuntu-18.04_amd64.deb
COPY ./apt-source-list  /etc/apt/sources.list.d/
COPY ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb .
RUN apt install -y ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb
RUN rm ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb

RUN mkdir /contracts
COPY contracts  /contracts/
