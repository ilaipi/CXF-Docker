FROM openjdk:8-jdk-alpine3.9
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ARG CXF_VERSION=3.4.1

WORKDIR /usr/src

ADD https://mirrors.bfsu.edu.cn/apache/cxf/${CXF_VERSION}/apache-cxf-${CXF_VERSION}.tar.gz  /usr/lib

RUN mkdir /usr/lib/apache-cxf && tar -xzf /usr/lib/apache-cxf-${CXF_VERSION}.tar.gz -C /usr/lib/apache-cxf --strip-components=1

ENTRYPOINT ["/usr/lib/apache-cxf/bin/wsdl2java"]
