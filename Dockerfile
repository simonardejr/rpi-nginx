FROM resin/rpi-raspbian:latest

# Install Nginx.
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/* && echo "daemon off;" >> /etc/nginx/nginx.conf

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
