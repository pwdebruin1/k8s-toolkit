FROM ubuntu:latest
LABEL maintainer="grimx13@gmail.com"

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y dnsutils netcat curl

COPY usage /usage
COPY run.sh /run.sh

CMD ["bash","/run.sh"]
