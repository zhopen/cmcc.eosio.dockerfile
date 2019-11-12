cp ../v1.8.1/eosio_1.8.1-1-ubuntu-18.04_amd64.deb .

docker build -t zhopen/eosio.eos:v1.8.1.10 .
docker save -o  zhopen.eosio.eos-v1.8.1.10.tar  zhopen/eosio.eos:v1.8.1.10

