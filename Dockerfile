FROM nginx
ADD /home/runner/work/nginxconfig/nginxconfig/dist/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
