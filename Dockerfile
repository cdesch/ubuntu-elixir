FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y wget gnupg2

RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && dpkg -i erlang-solutions_2.0_all.deb

RUN apt-get update
RUN apt-get install -y esl-erlang
RUN apt-get install -y elixir

CMD ["/bin/bash"]