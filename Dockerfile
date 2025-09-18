FROM registry.redhat.io/ubi8/nginx-120:1-22
COPY html/ /opt/app-root/src
EXPOSE 8080
