# Use an official Nginx image from Docker Hub  
FROM nginx:latest  

# Copy a custom index.html file into the container  
COPY index.html /usr/share/nginx/html/index.html  

# Expose port 80  
EXPOSE 80  
