
FROM nginx:alpine

# Update installed Alpine packages
RUN apk upgrade --no-cache

# Copy application
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
