FROM openjdk:8u265-slim

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

ADD target/url-1.0.jar /usr/share/jswdwsx/url.jar

CMD ["/bin/bash", "-c", "java -jar -server /usr/share/jswdwsx/url.jar"]

EXPOSE 8080
