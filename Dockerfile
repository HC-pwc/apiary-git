FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /root/work
WORKDIR /root/work/


RUN apt-get update
RUN apt-get install --yes git ruby-dev gettext curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

RUN gem install apiaryio

CMD ["bash"]


