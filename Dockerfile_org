
FROM centos:7
MAINTAINER jacklyn

RUN yum install -y wget

RUN cd /

ADD zulu8.25.0.1-jdk8.0.152-linux_x64.tar.gz /

#RUN tar zxvf zulu8.25.0.1-jdk8.0.152-linux_x64.tar.gz

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz

RUN tar zxvf apache-tomcat-7.0.88.tar.gz

ENV JAVA_HOME=/zulu8.25.0.1-jdk8.0.152-linux_x64
ENV PATH=$PATH:/zulu8.25.0.1-jdk8.0.152-linux_x64/bin
CMD ["/apache-tomcat-7.0.88/bin/catalina.sh", "run"]