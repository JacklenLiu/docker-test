
FROM centos:7
MAINTAINER jacklyn

RUN yum install -y wget

RUN cd /

RUN yum install -y java-1.8.0-openjdk.x86_64

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz

RUN tar zxvf apache-tomcat-7.0.88.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk-1.8.0.171-8.b10.el7_5.x86_64 

ENV PATH=$PATH:$JAVA_HOME/bin

CMD ["/apache-tomcat-7.0.88/bin/catalina.sh", "run"]