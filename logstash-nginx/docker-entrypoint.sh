#!/bin/bash
set -e

service nginx start
/opt/logstash/bin/logstash -f /etc/logstash/conf.d/nginx.conf
