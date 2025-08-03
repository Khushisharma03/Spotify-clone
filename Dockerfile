# Use official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend project into the Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (standard web port)
EXPOSE 80

# Start Nginx server (already defined in base image)
CMD ["nginx", "-g", "daemon off;"]

