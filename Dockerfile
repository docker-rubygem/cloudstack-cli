FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.5.9

RUN gem install cloudstack-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloudstack-cli"]
CMD ["--help"]
