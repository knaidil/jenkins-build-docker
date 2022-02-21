FROM nginx:latest
RUN sed -i 's/nginx/abir/g' /usr/share/nginx/html/index.html
EXPOSE 80

