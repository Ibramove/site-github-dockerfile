# Dockerfile
FROM nginxinc/nginx-unprivileged:1.25

# Copie ton site
COPY html/ /usr/share/nginx/html

# L'image écoute déjà en 8080 (non privilégié)
EXPOSE 8080

# Pas besoin de USER: l'image est déjà non-root
