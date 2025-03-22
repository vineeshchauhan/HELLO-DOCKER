# Use the official Nginx image
FROM nginx:alpine

# Copy custom Nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy HTML file to Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]