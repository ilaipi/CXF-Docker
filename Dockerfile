FROM openjdk:8-jdk-alpine3.9
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /usr/src

ADD https://mirrors.bfsu.edu.cn/apache/cxf/3.4.1/apache-cxf-3.4.1.tar.gz /usr/lib/

RUN ["sh", "-x", "cd /usr/lib && tar -xf apache-cxf-3.4.1.tar.gz"]

ENTRYPOINT ["/usr/lib/apache-cxf-3.4.1/bin/wsdl2java"]
