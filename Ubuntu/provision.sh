# Update the package references
apt update

# Install nginx, php, mariadb, and elinks
apt install -y nginx elinks php-fpm php-mysql mariadb-server mariadb-client

# Overwrite the default configuration
cp /home/vagrant/default.conf /etc/nginx/sites-available/default

# Install a php info script
cp /home/vagrant/info.php /var/www/html
chmod +r /var/www/html/info.php

# Restart and heck the status of everything
systemctl restart nginx
systemctl status nginx.service php7.2-fpm.service mariadb.service --no-pager
