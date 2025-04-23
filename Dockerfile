FROM kopia/kopia:latest

RUN apt-get -y update && \
    apt-get install -y wget curl gpg gnupg2 software-properties-common \
    apt-transport-https lsb-release ca-certificates && \
    apt-get clean autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/*

    # https://www.postgresql.org/download/linux/debian/
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get -y update && \
    apt-get install -y postgresql-client-17 && \
    apt-get clean autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/*

RUN apt-get -y update && \
    apt-get install -y default-mysql-client && \
    apt-get clean autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/* \
        /var/tmp/* /usr/share/doc/ /usr/share/man/ /usr/share/locale/ \
        /root/.cache /root/.local /root/.gnupg /root/.config /tmp/*
