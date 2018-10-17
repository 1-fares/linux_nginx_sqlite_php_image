# linux_nginx_sqlite_php_image
Linux / Nginx / PHP+Sqlite Docker image for Symfony apps

## Installation
On Linux,
1. Install Docker (eg. [Docker CE](https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-repository))
1. Install PHP 7.1 or higher
1. Install Git
1. Git clone this repository
1. Put your Symfony app (or PHP app that serves out of the /public directory - or edit default.conf) in the same parent directory
1. Edit APP_PATH in link_app.sh to point to your app
1. Run the image by running:
```bash
./run.sh
```
