# Use an official Nginx image
FROM nginx:alpine

# Copy HTML, CSS, JS to nginx default location
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
