FROM nginx:1

RUN apt-get update && apt-get install -y curl sudo && \
	rm -rf /var/lib/apt/lists/*

RUN curl -L http://toolbelt.treasuredata.com/sh/install-debian-wheezy-td-agent2.sh | sh

RUN /opt/td-agent/embedded/bin/fluent-gem install fluent-plugin-elasticsearch

RUN touch /var/log/td-agent/nginx-access.log.pos
RUN chown td-agent:td-agent /var/log/td-agent/nginx-access.log.pos

RUN mkdir /etc/td-agent/conf.d
RUN echo "@include conf.d/*.conf" >> /etc/td-agent/td-agent.conf
COPY nginx.conf /etc/td-agent/conf.d/nginx.conf

RUN rm /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
