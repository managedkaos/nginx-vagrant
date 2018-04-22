yum update
yum install -y epel-release
yum install -y nginx elinks php-cli php-fpm php-mysql mariadb-server mariadb-client vim
cp /home/vagrant/info.php /usr/share/nginx/html
chmod +r /usr/share/nginx/html/info.php
cp /home/vagrant/www.conf /etc/php-fpm.d
cp /home/vagrant/php-fpm.conf /etc/nginx/default.d
systemctl restart php-fpm
systemctl enable php-fpm
systemctl restart nginx
systemctl enable nginx
systemctl status php-fpm --no-pager
systemctl status nginx --no-pager
