## Nginx on Debian 8.0 (Jessie)


This repository contains **Dockerfile** of Nginx on Jessie


### Base Docker Image

* Debian Jessie (https://registry.hub.docker.com/_/debian/)

### Usage

    docker run -d -p 80:80 dorwardv/jessie_nginx

After few seconds, open `http://<host>/` to see the default nginx welcome page

###Build from Dockerfile
    docker build -t="dorwardv/jessie_nginx" github.com/dorwardv/jessie_nginx
