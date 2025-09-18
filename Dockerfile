FROM registry.access.redhat.com/ubi8/nginx-120:1-22   # ou nginx:1.22-ubi8 si ton registre est déjà configuré

# Copier ton site
COPY html/ /opt/app-root/src

# L'image écoute déjà sur le port 8080 (non root)
EXPOSE 8080
