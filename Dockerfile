FROM nginx:alpine
RUN adduser -D -u 1001 app \
 && sed -i 's/listen 80;/listen 8080;/' /etc/nginx/conf.d/default.conf \
 && chown -R 1001:0 /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html /etc/nginx /etc/nginx/conf.d
USER 1001
COPY html /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx","-g","daemon off;"]
