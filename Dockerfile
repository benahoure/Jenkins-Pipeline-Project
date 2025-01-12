# Base image
FROM fedora:latest

# Update packages
RUN yum update -y 

# Install Apache HTTP server
RUN yum install httpd -y 

# Copy the website files to the web server's document root
COPY ./webapp /var/www/html/

# Expose port 80
EXPOSE 80

# Set the default command for the container
CMD ["httpd", "-D", "FOREGROUND"]