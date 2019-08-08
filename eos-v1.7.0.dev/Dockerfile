FROM ubuntu:18.04

#linux
RUN apt-get update && apt-get install -y wget sudo curl apt-utils git g++

#cdt
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.5.0/eosio.cdt_1.5.0-1_amd64.deb
RUN apt install -y ./eosio.cdt_1.5.0-1_amd64.deb

#eos
RUN wget https://github.com/EOSIO/eos/releases/download/v1.7.0/eosio_1.7.0-1-ubuntu-18.04_amd64.deb
RUN apt-get update && apt install -y ./eosio_1.7.0-1-ubuntu-18.04_amd64.deb

#contracts
#contract source
RUN cd /opt && git clone -b v1.6.0 https://github.com/EOSIO/eosio.contracts.git 
RUN mkdir /contracts
COPY contracts /contracts/
