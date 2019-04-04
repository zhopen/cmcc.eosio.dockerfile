FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget sudo curl apt-utils git g++

#eosio 
RUN wget https://github.com/eosio/eos/releases/download/v1.5.2/eosio_1.5.2-1-ubuntu-18.04_amd64.deb
RUN apt install -y ./eosio_1.5.2-1-ubuntu-18.04_amd64.deb

#cdt
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.5.0/eosio.cdt_1.5.0-1_amd64.deb
RUN apt install -y ./eosio.cdt_1.5.0-1_amd64.deb

#contract source
RUN cd /opt && git clone -b v1.5.2 https://github.com/EOSIO/eosio.contracts.git 
