# Build:
#   docker build litdream:homeweb2-static:latest .
#

# Use a base image
FROM nginx:latest

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clone the webroot from GitHub
RUN git clone https://github.com/litdream/home-web2.git && \
    mv home-web2/static/*.html . && \
    mv home-web2/static/assets . && \
    mv home-web2/static/vendor . && \
    rm -rf home-web2
    
# Expose the default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
