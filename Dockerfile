FROM google/debian:wheezy

MAINTAINER "Timothy Stewart" <timothystewart6@hotmail.com>

RUN apt-get update && \
    apt-get install -y --no-install-recommends p7zip-full && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    7z -h

CMD ["7z"]
