FROM nginx:1.27-alpine

COPY dist/ /usr/share/nginx/html

COPY nginx/ /etc/nginx

COPY entrypoint.sh /docker-entrypoint.d/entrypoint.sh

RUN chmod u+x /docker-entrypoint.d/entrypoint.sh

# ENTRYPOINT [ "entrypoint.sh" ]
