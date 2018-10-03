# cron4backups
[![N|Solid](http://core0.staticworld.net/images/article/2015/07/docker-logo-copy-100594460-small.idge.png)](https://hub.docker.com/)
## Current version: 2.0
### 2.0 [20181003]
> -Remove crontemp directory

> -Link cron filesystem directory to /etc/cron.d docker directory in RUN command

> -Change directory names

> -Add example cron file in git

### 1.0 [20181002]
> -Change directories name

> -Add all manual actions to Dockerfile

> -Change instructions

### 0.1 [20170424]
> -Create automatic backups for mysql databases

### install

docker run -d -it --name [INSTANCE NAME] \\\
-v /[YOUR ROUTE]/cron.d:/etc/cron.d \\\
-v /[YOUR ROUTE]/cronlog:/var/log/cronlog \\\
-v /[YOUR ROUTE]/scripts:/resources/scripts \\\
-v /[YOUR ROUTE]/backups:/resources/backups \\\
-e MYSQL_ROOT_PASSWORD="THEPASS" javierpozuelo/cron4backups

> -/cron.d: crontab files
> -/cronlog: directory for self log
> -/scripts: script files
> -/backups: directory to save backup