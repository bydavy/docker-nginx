FROM bydavy/ubuntu-supervisor

RUN apt-get update -q
RUN apt-get install -qy nginx

ENV HOME /root
VOLUME /etc/nginx
EXPOSE 80/tcp

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
