FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y tmux wget tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Istanbul /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get clean

COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
