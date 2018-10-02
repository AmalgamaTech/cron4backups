FROM ubuntu:latest
FROM mysql:5
MAINTAINER javi@amalgamatech.com

# install cron, vim and curl
RUN apt-get update && apt-get install -y \
  cron vim curl

# create all dirs
RUN mkdir -p /resources/cron
RUN mkdir -p /resources/scripts
RUN mkdir -p /resources/backups
# mv original crontab file to persistant disk
RUN mv /etc/crontab /resources/cron
# create symbolic link from /etc to persistant file
RUN ln -s /resources/cron/crontab /etc/crontab
# run cron
CMD /usr/sbin/cron -f