FROM ubuntu:20.04
ENV LANG=en_US.UTF-8

RUN apt-get update && \
  apt-get install -y wget gnupg2 inotify-tools locales && \
  locale-gen en_US.UTF-8

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && \
  dpkg -i erlang-solutions_2.0_all.deb && \
  rm erlang-solutions_2.0_all.deb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y esl-erlang elixir

RUN apt-get clean
  

# RUN mix local.hex
# RUN mix archive.install hex phx_new 1.5.9
# sudo snap install node --classic --channel=14



CMD ["/bin/bash"]