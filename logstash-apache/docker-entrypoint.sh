#!/bin/bash
set -e

service apache2 start
/opt/logstash/bin/logstash -f /etc/logstash/conf.d/apache2.conf
