FROM buildpack-deps:jessie-curl

RUN curl -s https://download.elastic.co/kibana/kibana/kibana-4.0.2-linux-x64.tar.gz | tar -xz -C /opt && \
	ln -s /opt/kibana-4.0.2-linux-x64 /opt/kibana
	
COPY kibana.yml /opt/kibana/config/kibana.yml

EXPOSE 5601

ENTRYPOINT ["/opt/kibana/bin/kibana"]
