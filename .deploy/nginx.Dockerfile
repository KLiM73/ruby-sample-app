FROM nginx

COPY .deploy/nginx/default.conf /etc/nginx/conf.d/default.conf
