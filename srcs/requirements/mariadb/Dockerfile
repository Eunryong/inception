FROM    debian:buster

EXPOSE  3306

RUN     apt-get update && \
        apt-get upgrade && \
        apt-get -y install mariadb-server mariadb-client && \
        mkdir -p /var/run/mysqld && \
        chown mysql:mysql /var/run/mysqld

COPY    ./conf/my.cnf /etc/mysql/
COPY    ./tools/entry.sh /

RUN     chmod +x /entry.sh

ENTRYPOINT sh /entry.sh
