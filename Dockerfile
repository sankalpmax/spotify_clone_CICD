# Use the official Nginx image as base
FROM nginx:latest

# Copy the HTML, CSS, and image files into the Nginx server directory
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html
COPY images /usr/share/nginx/html/images

# Expose port 80 to allow outside access
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

