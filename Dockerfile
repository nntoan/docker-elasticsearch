FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.1

MAINTAINER Toan Nguyen <hello@nntoan.com>

RUN cd /usr/share/elasticsearch && \
    bin/elasticsearch-plugin install analysis-phonetic && \
    bin/elasticsearch-plugin install analysis-icu

