# Use nginx image as the base for the container
FROM nginx:latest

# Deploy the server configuration
COPY ./cfg/nginx.conf /etc/nginx/nginx.conf

# Deploy the website
COPY ./www/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
