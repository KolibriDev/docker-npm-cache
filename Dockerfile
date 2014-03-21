FROM ubuntu:13.04
MAINTAINER devops@relateiq.com

# Install Nginx.
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable && apt-get update && \
  apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  mkdir -p /logs /var/cache/npm/{data,tmp}

# Set working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80

# Add the interesting site.
ADD default /etc/nginx/nginx.conf

# Define default command.
ENTRYPOINT ["nginx"]
