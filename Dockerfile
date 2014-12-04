FROM dockerfile/rabbitmq
MAINTAINER Ian Blenke <ian@blenke.com>

RUN apt-get update; apt-get install -y supervisord

ADD rabbitmq-start /usr/local/bin/
ADD rabbitmq-cluster /usr/local/bin/
ADD conf.d/ /etc/supervisor/conf.d/

ADD run.sh /run.sh

CMD /run.sh
