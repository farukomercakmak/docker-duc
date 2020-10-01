FROM debian:buster
MAINTAINER Omer CAKMAK <farukomercakmak@gmail.com>

VOLUME /repo/aptmirror

RUN apt-get update && apt-get install -y apt-mirror

ADD mirror.list /etc/apt/mirror.list

CMD /usr/bin/apt-mirror 2>&1
