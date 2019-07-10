FROM ubuntu:18.04

RUN apt update && apt install -y wget curl 

#eosio 
#RUN wget https://github.com/eosio/eos/releases/download/v1.7.3/eosio_1.7.3-1-ubuntu-18.04_amd64.deb
COPY ./eosio_1.7.3-1-ubuntu-18.04_amd64.deb .
RUN apt install -y ./eosio_1.7.3-1-ubuntu-18.04_amd64.deb
RUN rm ./eosio_1.7.3-1-ubuntu-18.04_amd64.deb

RUN mkdir /contracts
COPY contracts  /contracts/



RUN apt-get purge -y python.* 
RUN apt-get update
RUN apt-get install gcc make

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8
ENV PYTHON_FILE Python-3.7.4.tgz

# if this is called "PIP_VERSION", pip explodes with "ValueError: invalid truth value '<VERSION>'"
ENV PYTHON_PIP_VERSION 9.0.1

COPY $PYTHON_FILE /
RUN set -ex \
        && mkdir -p /usr/src/python \
        && tar -xzC /usr/src/python --strip-components=1 -f /$PYTHON_FILE \
        && rm /$PYTHON_FILE \
        && cd /usr/src/python \
        && ./configure --enable-optimizations \
        && make \
        && make install \
        && ldconfig \
        && pip3 install --no-cache-dir --upgrade --ignore-installed pip==$PYTHON_PIP_VERSION \
        && find /usr/local -depth \
                \( \
                    \( -type d -a -name test -o -name tests \) \
                    -o \
                    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
                \) -exec rm -rf '{}' + \
        && rm -rf /usr/src/python ~/.cache 


RUN apt-get remove gcc make

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \
        && ln -s easy_install-3.5 easy_install \
        && ln -s idle3 idle \
        && ln -s pydoc3 pydoc \
        && ln -s python3 python \
        && ln -s python3-config python-config

