FROM wernight/phantomjs:1
MAINTAINER Tobias L. Maier <tobias.maier@baucloud.com>

USER root

RUN apt-get update \
  && apt-get install -y \
    curl \
    unzip \
  && curl -O "http://yslow.org/yslow-phantomjs-3.1.8.zip" \
  && unzip yslow-phantomjs-3.1.8.zip \
  && rm yslow-phantomjs-3.1.8.zip \
  && apt-get purge -y --auto-remove curl unzip \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /

USER phantomjs

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--threshold", "'{\"overall\": \"B\", \"ycdn\": 65}'"]
