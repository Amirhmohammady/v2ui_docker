#FROM fabric8/java-centos-openjdk8-jdk:latest As AmirUbuntu
FROM ubuntu:latest As AmirUbuntu
EXPOSE 80
USER root
COPY x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz /home/
COPY ["nginx-1.22.1-Stable version.tar.gz", "/home/"]
WORKDIR "/home/"
RUN tar xvzf x-ui-linux-amd64-hossinasaadi-0.5.4.tar.gz
CMD ["x-ui/x-ui"]