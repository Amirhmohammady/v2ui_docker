#FROM fabric8/java-centos-openjdk8-jdk:latest As AmirUbuntu
FROM nginx:latest As AmirUbuntu
EXPOSE 80
USER root
COPY x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz /home/
COPY ["nginx-1.22.1-Stable version.tar.gz", "/home/"]
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR "/home/"
RUN tar xvzf x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz
CMD ["x-ui/x-ui"]