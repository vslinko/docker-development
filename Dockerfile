FROM ubuntu:14.04

RUN apt-get update &&\
 apt-get upgrade -y

RUN apt-get install -y git

RUN apt-get install -y nodejs npm &&\
 ln -s /usr/bin/nodejs /usr/bin/node

RUN apt-get install -y php5-cli php-apc php5-curl php5-gd php5-json\
 php5-mysql php5-intl php5-mcrypt php5-memcache php5-memcached php5-mongo\
 php5-redis

RUN useradd -m vslinko -g 50 &&\
 mkdir -p /home/vslinko/workspace

VOLUME ["/home/vslinko/workspace"]

CMD ["/bin/bash"]
