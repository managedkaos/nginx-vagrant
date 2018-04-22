# nginx-vagrant
Install the nginx webserver on a Ubuntu or CentOS VM.

## Ubuntu
To run Nginx on a Ubuntu based VM:
```
git clone https://github.com/managedkaos/nginx-vagrant
cd nginx-vagrant/Ubuntu
vagrant up
```

Open a browser to port 9090 on localhost: http://localhost:9090.

To get the PHP configuration, open a browser to http://localhost:9090/info.php.

## CentOS
To run Nginx on a Ubuntu based VM:
```
git clone https://github.com/managedkaos/nginx-vagrant
cd nginx-vagrant/CentOS
vagrant up
```

Open a browser to port 9090 on localhost: http://localhost:9191.

To get the PHP configuration, open a browser to http://localhost:9191/info.php.
