FROM buildpack-deps:jessie-curl


RUN wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb http://packages.elasticsearch.org/logstash/1.4/debian stable main" > /etc/apt/sources.list.d/logstash.list

RUN apt-get update && apt-get install -y apache2 logstash && \
    rm -rf /var/lib/apt/lists/*

COPY apache2.conf /etc/logstash/conf.d/apache2.conf
RUN ln -sf /dev/stdout /var/log/logstash/logstash.stdout

EXPOSE 80
ENV APACHE_RUN_USER    www-data
ENV APACHE_RUN_GROUP   www-data
ENV APACHE_PID_FILE    /var/run/apache2.pid
ENV APACHE_RUN_DIR     /var/run/apache2
ENV APACHE_LOCK_DIR    /var/lock/apache2
ENV APACHE_LOG_DIR     /var/log/apache2
RUN mkdir $APACHE_LOCK_DIR && chown www-data $APACHE_LOCK_DIR
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
