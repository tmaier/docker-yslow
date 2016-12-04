FROM wernight/phantomjs:2
MAINTAINER Tobias L. Maier <tobias.maier@baucloud.com>


COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
