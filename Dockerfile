# Use the official Nginx image as the base image
FROM nginx

# Copy the Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Create the htpasswd file for basic auth
RUN printf "user:$(openssl passwd -crypt password)\n" >> /etc/nginx/.htpasswd

# Expose port 90 for HTTP traffic
EXPOSE 90
