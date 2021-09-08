FROM docker.elastic.co/logstash/logstash-oss:7.14.1

COPY logstash-output-scalyr.gem /tmp/logstash-output-scalyr.gem
RUN ls -la /tmp/
RUN /usr/share/logstash/bin/logstash-plugin install /tmp/logstash-output-scalyr.gem
