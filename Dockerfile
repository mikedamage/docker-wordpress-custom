FROM wordpress:4.3.1-fpm
MAINTAINER Mike Green <mike.is.green@gmail.com>

# Pager required for WP-CLI
RUN apt-get -y update && apt-get -y install less

# Install WP-CLI
RUN curl -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x /usr/local/bin/wp

# Add custom php.ini
COPY config/php.ini /usr/local/etc/php/
