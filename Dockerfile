FROM alpine:3.2

MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

# Let's start with some basic stuff.
RUN apk --update add \
 iptables \
 ca-certificates \
 lxc \
 e2fsprogs \
 docker \
 bash

 ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
ENTRYPOINT ["wrapdocker"]
