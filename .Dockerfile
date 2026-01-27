FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY env.js /usr/share/nginx/html/

# Replace env variables at container start
CMD sh -c "envsubst < /usr/share/nginx/html/env.js > /usr/share/nginx/html/env.js && nginx -g 'daemon off;'"

EXPOSE 80

