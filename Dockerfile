FROM nginx:alpine
COPY ./web /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE "8888"
