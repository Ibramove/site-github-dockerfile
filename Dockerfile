FROM nginxinc/nginx-unprivileged:1.25
COPY html/ /usr/share/nginx/html
EXPOSE 8080
