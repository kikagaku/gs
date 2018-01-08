# Base image:
FROM nginx

# Install dependencies
RUN apt-get update -qq && apt-get -y install apache2-utils

# establish where Nginx should look for files
ENV RAILS_ROOT /var/www/web

# Set our working directory inside the image
WORKDIR $RAILS_ROOT

# create log directory
RUN mkdir log

# # copy over static assets
# COPY rails/public public/
#
# # Copy Nginx config template
# COPY rails/config/nginx.conf /tmp/docker_example.nginx
#
# # substitute variable references in the Nginx config template for real values from the environment
# # put the final config in its place
# RUN envsubst '$RAILS_ROOT' < /tmp/docker_example.nginx > /etc/nginx/conf.d/default.conf
#
# EXPOSE 80
