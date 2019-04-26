# ubuntu:16.04 has too old GCC.
FROM ubuntu:18.04 

# https://dev.mysql.com/doc/mysql-sourcebuild-excerpt/5.5/en/source-installation.html
RUN apt update
RUN apt install -y build-essential cmake make gcc 
RUN apt install -y libncurses5-dev 
RUN apt install -y bison m4
RUN apt install -y git

COPY build.sh /build.sh
RUN chmod +x /build.sh
ENTRYPOINT ["/build.sh"]
