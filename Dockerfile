# Use the official NGINX image
FROM nginx:latest

# Copy the SSL certificates and NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY certs/server.crt /etc/nginx/ssl/server.crt
COPY certs/server.key /etc/nginx/ssl/server.key


# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
# Expose HTTPS port
EXPOSE 9443