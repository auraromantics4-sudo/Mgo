FROM nginx:alpine

RUN echo "<h1>System Status: 200 OK | Node Active</h1>" > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
