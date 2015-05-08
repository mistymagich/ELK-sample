Elasticsearch + Kibana + Logstash & Fluentd Sample
==================================================



## Requirement

- VirtualBox
- Vagrant
- [Vagrant Host Manager](https://github.com/smdahlen/vagrant-hostmanager)


## Usage

```
(host)> vagrant up

Login guest os (e.g. vagrant ssh)

(guest)$ docker-compose -f /vagrant/docker-compose.yml -p elksample up
```

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)


## Reference

Installing ELK on a single machine
https://gist.github.com/ashrithr/c5c03950ef631ac63c43

Setting up Logstash 1.4.2 to forward Nginx logs to Elasticsearch | Bravo Kernel
http://www.bravo-kernel.com/2014/12/setting-up-logstash-1-4-2-to-forward-nginx-logs-to-elasticsearch/

php/Dockerfile at master · docker-library/php
https://github.com/docker-library/php/blob/master/5.5/apache/Dockerfile

5-minute Logstash: Parsing and Sending a Log File | Sematext Blog
http://blog.sematext.com/2013/12/19/getting-started-with-logstash/

http://www.logstash.net/docs/1.4.0/tutorials/10-minute-walkthrough/apache-parse.conf

Fluentd + ElasticSearch + Kibana で nginx のログを可視化する
http://503.mydns.jp/2015/01/29/data-visualization/

fluentd から elasticsearch の複数の logstash 形式 index にログを送る為のメモ - ようへいの日々精進 XP
http://inokara.hateblo.jp/entry/2013/11/30/104023

nginx のログを fluentd で扱う方法 | /home/by-natures/*
http://bynatures.net/wordpress/1951/

nginx のログを fluentdに流す（pattern not match対策） - Qiita
http://qiita.com/liubin/items/92a4e7e3917143ae4aaf
