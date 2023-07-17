# Use a base image
FROM nginx:latest

# Install Git
RUN apt-get update && apt-get install -y git

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clone the webroot from GitHub
RUN git clone https://litdream@bitbucket.org/litdream/home-web2.git && \
    mv home-web2/static/* . && \
    rm -rf home-web2
    
# Expose the default Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
