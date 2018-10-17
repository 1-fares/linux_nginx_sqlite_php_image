# linux_nginx_sqlite_php_image
Linux / Nginx / PHP+Sqlite Docker image for Symfony apps

## Installation
1. Install Git
1. Git clone this repository
On Debian:
```
apt-get update && apt-get upgrade -y && apt-get install git -y && git clone https://github.com/1-fares/linux_nginx_sqlite_php_image.git
```

## Installation with script on Debian
```
cd linux_nginx_sqlite_php_image
./debian_install_software.sh
```
Line to copy/paste for a new Debian deployment:
```
apt-get update && apt-get upgrade -y && apt-get install git -y && git clone https://github.com/1-fares/linux_nginx_sqlite_php_image.git && cd linux_nginx_sqlite_php_image && ./debian_first_run.sh
```
## Installation without script
1. Install Docker (eg. [Docker CE](https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-repository))
1. Install PHP 7.1 or higher (eg. [From Github](http://php.net/git.php))

## Installation continued
1. Put your Symfony app (or PHP app that serves out of the /public directory - or edit default.conf) in the same parent directory
1. Edit APP_PATH in link_app.sh to point to your app
1. Run the image by running:
```
./run.sh
```
