# Update the package references
apt update

# Install nginx, php, mariadb, and elinks
apt install -y nginx elinks 

# Overwrite the default configuration
cp /home/vagrant/default.conf /etc/nginx/sites-available/default

# Restart and check the status of everything
systemctl restart nginx
systemctl status nginx.service --no-pager
chmod +x /home/vagrant/list_nginx_files.sh
