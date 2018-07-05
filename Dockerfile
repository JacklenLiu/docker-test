
FROM centos:7
MAINTAINER jacklyn

RUN yum install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.88/bin/apache-tomcat-7.0.88.tar.gz

RUN tar zxvf apache-tomcat-7.0.88.tar.gz

CMD ["/apache-tomcat-7.0.88/bin/catalina.sh", "run"]

EXPOSE 8080