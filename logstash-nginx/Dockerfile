FROM nginx:1

RUN apt-get update && apt-get install -y wget

RUN wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb http://packages.elasticsearch.org/logstash/1.4/debian stable main" > /etc/apt/sources.list.d/logstash.list

RUN apt-get update && apt-get install -y logstash && \
    rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/logstash/conf.d/nginx.conf

RUN rm /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log
RUN ln -sf /dev/stdout /var/log/logstash/logstash.stdout

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
