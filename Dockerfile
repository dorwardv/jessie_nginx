FROM debian:jessie
MAINTAINER Dorward Villaruz "dorwardv@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62
RUN echo "deb http://nginx.org/packages/mainline/debian/ wheezy nginx" >> /etc/apt/sources.list.d/nginx.list

RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apt/archives/*.deb

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
