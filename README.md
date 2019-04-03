#eosio.cdt各个版本的binary安装包
https://github.com/eosio/eosio.cdt/releases

#eos v1.7.0
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.5.0/eosio.cdt_1.5.0-1_amd64.deb
RUN apt-get update && sudo apt install -y ./eosio.cdt_1.5.0-1_amd64.deb
RUN wget https://github.com/EOSIO/eos/releases/download/v1.7.0/eosio_1.7.0-1-ubuntu-18.04_amd64.deb
