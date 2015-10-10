##
#
# NodeJS application image
#
# Created by Karl Bateman
# @todo install nginx, passenger and
#       configure https.
#

FROM netfoxlabs/base:debian

MAINTAINER NetFox <admin@netfox.io>

# install and configure nodejs with nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc && \
    nvm install stable && nvm alias default stable
