FROM php:8.2-apache

# Copy site files into Apache's web root
COPY . /var/www/html/

# Configure Apache to listen on Render's required PORT environment variable
RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf

EXPOSE 80
