FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  software-properties-common \
  vim nano less man-db \
  adduser passwd \
  procps psmisc \
  net-tools iproute2 \
  cron \
  findutils grep coreutils \
  util-linux lsof tree ufw \
  plocate \
  htop \
  zip unzip \
  curl \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '""' farit
RUN mkdir -p /var/farit/log /var/www/log /var/www/backup
RUN chown -R farit:farit /var/farit /var/www

COPY scripts/ /home/farit/scripts/
RUN chmod +x /home/farit/scripts/*.sh

RUN echo "0 23 * * * /home/farit/scripts/mover_logs.sh" >> /etc/crontab
RUN echo "*/5 * * * * /home/farit/scripts/generar_logs.sh" >> /etc/crontab
RUN echo "5 23 * * * /home/farit/scripts/backup_logs.sh" >> /etc/crontab
RUN echo "5 23 * * * /home/farit/scripts/backup_logs.sh" >> /home/farit/mycron
RUN crontab -u farit /home/farit/mycron

WORKDIR /app

CMD ["cron", "-f"]