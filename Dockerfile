FROM node:v16.18.1 as node
WORKDIR /app/
RUN git clone https://github.com/MrHongping/nginxconfig.git \
	&& npm ci \
	&& npm run build
FROM nginx
LABEL MAINTAINER="hongping@hongpinglei@gmail.com"
COPY --from=node /app/dist/ /usr/share/nginx/html/
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
