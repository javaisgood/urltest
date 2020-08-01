FROM openjdk:11.0.5-stretch

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone

ADD target/url-1.0.jar /usr/share/jswdwsx/url.jar

CMD ["/bin/bash", "-c", "java -jar -server /usr/share/jswdwsx/url.jar"]

EXPOSE 9000