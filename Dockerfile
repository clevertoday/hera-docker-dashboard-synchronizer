FROM        ubuntu:14.04
MAINTAINER  Brice Argenson <brice@clevertoday.com>

RUN         apt-get update -y && \
            apt-get install -y npm && \
            ln -s /usr/bin/nodejs /usr/bin/node && \
            git config --global user.email 'user@hera.com' && \
            git config --global user.name 'hera'

ADD         src     /src

RUN         cd /src && npm install

EXPOSE      8080

ENTRYPOINT  ["nodejs", "/src/index.js"]