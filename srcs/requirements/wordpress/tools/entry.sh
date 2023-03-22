sleep 10

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mkdir -p /run/php

cd /var/www

wp core install --allow-root --path=/var/www \
								--url=eunrlee.42.fr \
								--title=Inception \
								--admin_user=$ADMIN_USER \
								--admin_password=$ADMIN_PWD \
								--admin_email=eunrlee@student.42seoul.kr \
								--skip-email

wp user create \
							$USER_ID user42@student.42seoul.kr \
							--allow-root --path=/var/www \
							--role=author \
							--user_pass=$USER_PWD

sleep 5
exec  php-fpm7.3 -F
