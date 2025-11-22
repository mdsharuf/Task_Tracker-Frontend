FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static frontend
COPY index.html /usr/share/nginx/html/index.html

# Nginx listens on 80 in the container
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
