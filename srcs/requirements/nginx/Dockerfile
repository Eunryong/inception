FROM    debian:buster

EXPOSE 443

RUN     apt-get update && \
        apt-get upgrade && \
        apt-get -y install nginx openssl


COPY    ./conf/default /etc/nginx/sites-available

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/eunrlee.key -out /etc/ssl/eunrlee.crt \
        -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=eunrlee"

RUN     chmod 700 /etc/ssl/eunrlee.crt
RUN     chmod 700 /etc/ssl/eunrlee.key


ENTRYPOINT ["nginx", "-g", "daemon off;"]
