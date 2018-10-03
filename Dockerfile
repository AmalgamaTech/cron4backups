FROM ubuntu:latest
FROM mysql:5
MAINTAINER javi@amalgamatech.com

# install cron, vim and curl
RUN apt-get update && apt-get install -y \
  cron vim curl

# create all dirs
RUN mkdir -p /resources/scripts
RUN mkdir -p /resources/backups

# run cron
CMD /usr/sbin/cron -f