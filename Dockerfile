
FROM nginx:1.23.2
COPY static-html-directory /usr/share/nginx/html
EXPOSE 80
COPY nginx.conf /etc/nginx/nginx.conf
CMD [ "nginx", "-g", "daemon off;" ]