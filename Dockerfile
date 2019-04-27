# ubuntu:16.04 has too old GCC.
FROM ubuntu:18.04

# https://dev.mysql.com/doc/mysql-sourcebuild-excerpt/5.5/en/source-installation.html
RUN apt-get update
RUN apt-get install -y build-essential cmake make gcc
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y bison m4
RUN apt-get install -y git
RUN apt-get install -y libnuma-dev
RUN apt-get install -y pkg-config
RUN apt-get install -y zlib1g-dev

COPY build.sh /build.sh
RUN chmod +x /build.sh
CMD ["/build.sh"]
