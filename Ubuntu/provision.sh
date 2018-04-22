apt update
apt install -y nginx elinks php-fpm php-mysql mariadb-server mariadb-client
cp /home/vagrant/default.conf /etc/nginx/sites-available/default
cp /home/vagrant/info.php /var/www/html
systemctl restart nginx
systemctl status nginx --no-pager
